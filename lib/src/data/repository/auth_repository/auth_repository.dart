import 'dart:developer';

import 'package:gestionuh/src/data/api/api.dart';
import 'package:gestionuh/src/data/local/local_storage.dart';

import 'package:gestionuh/src/data/models.dart';

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
}
