import 'package:flutter/material.dart';
import 'package:gestionuh/app.dart';
import 'package:gestionuh/deps_injector.dart';
import 'package:gestionuh/src/data/repository/auth_repository/auth_repository.dart';

Future<void> main() async {
  await initialize();
  runApp(GestionUhApp());
}

Future<void> initialize() async {
  WidgetsFlutterBinding.ensureInitialized();

  await init();

  // Load user credentials
  await di<AuthRepository>().initialize();
}
