import 'dart:developer';
import 'dart:ffi';

import '../../../utils/constants/storage_keys.dart';
import '../../api/api.dart';
import '../../local/local_storage.dart';
import '../../models.dart';
import '../../models/status.dart';

class AuthRepository {
  final GestionApi api;
  final ILocalStorage localStorage;

  AuthRepository({
    this.api,
    this.localStorage,
  });

  Future<void> initialize() async {
    await localStorage.loadSession();
    if (logged) {
      var credentials = await localStorage.getCredentials();
      api.setLogin(credentials[USER_NAME], credentials[USER_PASSWORD]);
    }
  }

  bool get logged => localStorage.isLogged();

  Future<Auth> login(
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
          isLoggedInto: true,
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
    Status status;
    try {
      status = await api.resetPassword(password);
      if (status.status == false) return status;

      final credentials = await localStorage.getCredentials();

      // save new password
      api.setLogin(credentials[USER_NAME], password);
      localStorage.updateCredentials(
        userName: credentials[USER_NAME],
        password: password,
        isLoggedInto: true,
        persist: credentials[USER_REMEMBERME],
      );
    } catch (e) {
      log(e.toString());
    }
    return status ?? Status(status: false);
  }
}
