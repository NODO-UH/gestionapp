import 'package:flutter/material.dart';

import 'package:gestionuh/src/data/repository/auth_repository/auth_repository.dart';
import 'package:gestionuh/src/utils/constants.dart';

import 'app.dart';
import 'deps_injector.dart';

void main() async {
  await initialize();

  runApp(GestionUhApp());
}

Future<void> initialize() async {
  WidgetsFlutterBinding.ensureInitialized();

  await init();

  //Update user credentials
  var authRepo = di<AuthRepository>();
  if (authRepo.logged) {
    var credentials = await authRepo.localStorage.getCredentials();
    authRepo.api.setLogin(credentials[USER_NAME], credentials[USER_PASSWORD]);
  }
}
