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
    this.api,
    this.localStorage,
  });

  bool get logged => localStorage.isLogged();

  Future<Auth> login(String username, String password) async {
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
      );
    } catch (e) {
      log(e.toString());
    }
    return status ?? Status(status: false);
  }
}
