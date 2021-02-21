import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:gestionuh/src/utils/constants.dart';

abstract class ILocalStorage {
  //Account-Credentials
  bool isLogged();

  Future<Map<String, dynamic>> getCredentials();

  Future<void> updateCredentials({
    @required String userName,
    @required String password,
    bool isLoggedInto = true,
  });

  Future<void> invalidateCredentials();
}

class LocalStorage implements ILocalStorage {
  SharedPreferences _prefs;

  LocalStorage({
    SharedPreferences prefs,
  }) {
    _prefs = prefs;
  }

  //Account-Credentials
  @override
  Future<Map<String, dynamic>> getCredentials() async {
    String usr = _prefs.getString(USER_NAME);
    String psw = _prefs.getString(USER_PASSWORD);
    return {
      USER_NAME: usr,
      USER_PASSWORD: psw,
    };
  }

  @override
  bool isLogged() {
    return (_prefs.containsKey(USER_LOGGED_INTO) &&
        _prefs.getBool(USER_LOGGED_INTO));
  }

  @override
  Future<void> updateCredentials({
    String userName,
    String password,
    bool isLoggedInto = true,
  }) async {
    await _prefs.setString(USER_NAME, userName);
    await _prefs.setString(USER_PASSWORD, password);
    await _prefs.setBool(USER_LOGGED_INTO, isLoggedInto);
  }

  @override
  Future<void> invalidateCredentials() async {
    await _prefs.setBool(USER_LOGGED_INTO, false);
    // await _prefs.remove(USER_NAME);
    // await _prefs.remove(USER_PASSWORD);
  }
}
