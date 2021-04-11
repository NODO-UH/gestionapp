import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gestionuh/src/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ILocalStorage {
  //Account-Credentials
  Future<void> loadSession();

  bool isLogged();

  Future<Map<String, dynamic>> getCredentials();

  Future<void> updateCredentials({
    @required String userName,
    @required String password,
    bool isLoggedInto = true,
    bool persist = false,
  });

  Future<void> invalidateCredentials();
}

class LocalStorage implements ILocalStorage {
  SessionData _sessionData;
  SharedPreferences _prefs;
  FlutterSecureStorage _secureStorage;

  LocalStorage({
    SharedPreferences prefs,
    FlutterSecureStorage secureStorage,
  }) {
    _prefs = prefs;
    _secureStorage = secureStorage;
    _sessionData = SessionData();
  }
  Future<void> loadSession() async {
    if (_prefs.containsKey(USER_LOGGED_INTO) &&
        _prefs.getBool(USER_LOGGED_INTO)) {
      var info = await _secureStorage.readAll();
      _sessionData.rememberMe = _prefs.containsKey(USER_LOGGED_INTO) &&
          _prefs.getBool(USER_LOGGED_INTO);
      _sessionData.isLoggedInto = true;
      _sessionData.userName = info[USER_NAME];
      _sessionData.password = info[USER_PASSWORD];
    }
  }

  //Account-Credentials
  @override
  Future<Map<String, dynamic>> getCredentials() async {
    if (_sessionData.isLoggedInto)
      return {
        USER_NAME: _sessionData.userName,
        USER_PASSWORD: _sessionData.password,
        USER_REMEMBERME: _sessionData.rememberMe,
      };
    return null;
  }

  @override
  bool isLogged() {
    return _sessionData.isLoggedInto;
  }

  @override
  Future<void> updateCredentials({
    String userName,
    String password,
    bool isLoggedInto = true,
    bool persist = false,
  }) async {
    if (persist) {
      await _secureStorage.write(key: USER_NAME, value: userName);
      await _secureStorage.write(key: USER_PASSWORD, value: password);
      await _prefs.setBool(USER_LOGGED_INTO, isLoggedInto);
      await _prefs.setBool(USER_REMEMBERME, persist);
    }
    _sessionData
      ..userName = userName
      ..password = password
      ..isLoggedInto = isLoggedInto
      ..rememberMe = persist;
  }

  @override
  Future<void> invalidateCredentials() async {
    await _prefs.setBool(USER_LOGGED_INTO, false);
    await _prefs.setBool(USER_REMEMBERME, false);
    if (await _secureStorage.containsKey(key: USER_NAME))
      await _secureStorage.delete(key: USER_NAME);
    if (await _secureStorage.containsKey(key: USER_PASSWORD))
      await _secureStorage.delete(key: USER_PASSWORD);
    //
    _sessionData.isLoggedInto = false;
    _sessionData.rememberMe = false;
  }
}

class SessionData {
  // Session Data
  String userName;
  String password;
  bool isLoggedInto;
  bool rememberMe;

  SessionData({
    this.userName,
    this.password,
    this.isLoggedInto = false,
    this.rememberMe = false,
  });
}
