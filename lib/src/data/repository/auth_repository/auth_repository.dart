import 'dart:developer';

import 'package:gestionuh/src/data/api/api.dart';
import 'package:gestionuh/src/data/local/local_storage.dart';
import 'package:gestionuh/src/data/models.dart';
import 'package:gestionuh/src/data/models/status.dart';
import 'package:gestionuh/src/utils/constants/storage_keys.dart';

class AuthRepository {
  final GestionApi api;
  final ILocalStorage localStorage;

  AuthRepository({
    required this.api,
    required this.localStorage,
  });

  Future<void> initialize() async {
    await localStorage.loadSession();
    if (logged) {
      final credentials = await localStorage.getCredentials();
      if (credentials != null) {
        api.setLogin(credentials[USER_NAME] as String,
            credentials[USER_PASSWORD] as String);
      }
    }
  }

  bool get logged => localStorage.isLogged();

  Future<Auth?> login(
    String username,
    String password, [
    bool remmemberMe = false,
  ]) async {
    Auth result;
    api.setLogin(username, password);
    try {
      result = await api.getTokens();
      if (result.error != null) {
        log(result.error.toString());
        api.logout();
      } else {
        await localStorage.updateCredentials(
          userName: username,
          password: password,
          persist: remmemberMe,
        );
      }
      return result;
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  Future<void> logout() async {
    api.logout();
    await localStorage.invalidateCredentials();
  }

  Future<Status> resetPassword(
      String currentPassword, String newPassword) async {
    try {
      final status = await api.resetPassword(currentPassword, newPassword);
      if (status.status == false) {
        return status;
      }

      final credentials = await localStorage.getCredentials();

      if (credentials == null) {
        return Status()..error = 'Cierre sesión, por favor';
        // exception ---> 'Credentials is null.';
      }

      // save new password
      api.setLogin(credentials[USER_NAME] as String, newPassword);
      localStorage.updateCredentials(
        userName: credentials[USER_NAME] as String,
        password: newPassword,
        persist: credentials[USER_REMEMBERME] as bool,
      );

      return status;
    } catch (e) {
      log(e.toString());
      return Status(status: false);
    }
  }

  Future<SecurityQuestions> getSecurityQuestions() async {
    try {
      return await api.getAllSecurityQuestions();
    } catch (e) {
      log(e.toString());
      return SecurityQuestions()..error = e.toString();
    }
  }

  Future<UserId> sendRegistration(PasswordEditData regData) async {
    try {
      return await api.signUp(regData);
    } catch (e) {
      log(e.toString());
      return UserId()..error = e.toString();
    }
  }
}
