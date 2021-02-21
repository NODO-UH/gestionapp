import 'package:flutter/material.dart';

import 'app.dart';
import 'deps_injector.dart';

void main() async {
  await initialize();

  runApp(GestionUhApp());
}

Future<void> initialize() async {
  WidgetsFlutterBinding.ensureInitialized();

  await init();
}
