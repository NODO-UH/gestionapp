import 'dart:developer';

import '../../../utils/constants/storage_keys.dart';
import '../../api/api.dart';
import '../../local/local_storage.dart';
import '../../models.dart';
import '../../models/status.dart';

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

  Future<Status> resetPassword(String password) async {
    try {
      final status = await api.resetPassword(password);
      if (status.status == false) {
        return status;
      }

      final credentials = await localStorage.getCredentials();

      if (credentials == null) {
        throw Exception('Credentials is null.');
      }

      // save new password
      api.setLogin(credentials[USER_NAME] as String, password);
      localStorage.updateCredentials(
        userName: credentials[USER_NAME] as String,
        password: password,
        persist: credentials[USER_REMEMBERME] as bool,
      );

      return status;
    } catch (e) {
      log(e.toString());
      return Status(status: false);
    }
  }

  Future<AllSecurityQuestions> getSecurityQuestions() async {
    try {
      return await api.getAllSecurityQuestions();
    } catch (e) {
      log(e.toString());
      return AllSecurityQuestions()..error = e.toString();
    }
  }

  Future<SignUpUserId> sendRegistration(SignUpData regData) async {
    try {
      return await api.signUp(regData);
    } catch (e) {
      log(e.toString());
      return SignUpUserId()..error = e.toString();
    }
  }
}
