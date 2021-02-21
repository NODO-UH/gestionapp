import 'package:gestionuh/src/data/api/api.dart';
import 'package:gestionuh/src/data/local/local_storage.dart';

class AuthRepository {
  final GestionApi api;
  final ILocalStorage localStorage;

  AuthRepository({
    this.api,
    this.localStorage,
  });

  void login(String username, String password) {}

  void logout() {}
}
