import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gestionuh/src/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ILocalStorage {
  //Account-Credentials
  Future<void> loadSession();

  bool isLogged();

  bool get isSecureStorageAvailable;

  Future<Map<String, dynamic>?> getCredentials();

  Future<void> updateCredentials({
    required String userName,
    required String password,
    bool isLoggedInto = true,
    bool persist = false,
  });

  Future<void> invalidateCredentials();
}

class LocalStorage implements ILocalStorage {
  final SessionData sessionData = SessionData(
    userName: '',
    password: '',
  );
  final SharedPreferences prefs;
  final FlutterSecureStorage secureStorage;

  LocalStorage({
    required this.prefs,
    required this.secureStorage,
  });

  @override
  bool get isSecureStorageAvailable =>
      !kIsWeb && (Platform.isAndroid || Platform.isIOS || Platform.isLinux);

  @override
  Future<void> loadSession() async {
    if (!isSecureStorageAvailable) {
      return;
    }
    if (prefs.containsKey(USER_LOGGED_INTO) &&
        prefs.getBool(USER_LOGGED_INTO)!) {
      final info = await secureStorage.readAll();
      sessionData.rememberMe = prefs.containsKey(USER_LOGGED_INTO) &&
          prefs.getBool(USER_LOGGED_INTO)!;
      sessionData.isLoggedInto = true;
      sessionData.userName = info[USER_NAME]!;
      sessionData.password = info[USER_PASSWORD]!;
    }
  }

  //Account-Credentials
  @override
  Future<Map<String, dynamic>?> getCredentials() async {
    if (sessionData.isLoggedInto) {
      return {
        USER_NAME: sessionData.userName,
        USER_PASSWORD: sessionData.password,
        USER_REMEMBERME: sessionData.rememberMe,
      };
    }
    return null;
  }

  @override
  bool isLogged() {
    return sessionData.isLoggedInto;
  }

  @override
  Future<void> updateCredentials({
    required String userName,
    required String password,
    bool isLoggedInto = true,
    bool persist = false,
  }) async {
    if (persist && isSecureStorageAvailable) {
      await secureStorage.write(key: USER_NAME, value: userName);
      await secureStorage.write(key: USER_PASSWORD, value: password);
      await prefs.setBool(USER_LOGGED_INTO, isLoggedInto);
      await prefs.setBool(USER_REMEMBERME, persist);
    }
    sessionData
      ..userName = userName
      ..password = password
      ..isLoggedInto = isLoggedInto
      ..rememberMe = persist;
  }

  @override
  Future<void> invalidateCredentials() async {
    await prefs.setBool(USER_LOGGED_INTO, false);
    await prefs.setBool(USER_REMEMBERME, false);
    if (isSecureStorageAvailable) {
      if (await secureStorage.containsKey(key: USER_NAME)) {
        await secureStorage.delete(key: USER_NAME);
      }
      if (await secureStorage.containsKey(key: USER_PASSWORD)) {
        await secureStorage.delete(key: USER_PASSWORD);
      }
    }
    sessionData.isLoggedInto = false;
    sessionData.rememberMe = false;
  }
}

class SessionData {
  // Session Data
  String userName;
  String password;
  bool isLoggedInto;
  bool rememberMe;

  SessionData({
    required this.userName,
    required this.password,
    this.isLoggedInto = false,
    this.rememberMe = false,
  });
}
