import 'package:flutter/material.dart';

import 'app.dart';
import 'deps_injector.dart';
import 'src/data/repository/auth_repository/auth_repository.dart';

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
