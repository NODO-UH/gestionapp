import 'package:flutter/material.dart';

import 'package:gestionuh/src/data/repository/auth_repository/auth_repository.dart';
import 'package:gestionuh/src/utils/constants.dart';

import 'app.dart';
import 'deps_injector.dart';

void main() async {
  await initialize().whenComplete(
    () => runApp(GestionUhApp()),
  );
}

Future<void> initialize() async {
  WidgetsFlutterBinding.ensureInitialized();

  await init();

  // Load user credentials
  await di<AuthRepository>().initialize();
}
