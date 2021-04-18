import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestionuh/src/app.dart';
import 'package:gestionuh/src/data/repository/auth_repository.dart';
import 'package:gestionuh/src/dependencies.dart';
import 'package:gestionuh/src/utils/configurations/configure_nonweb.dart'
    if (dart.library.html) 'package:gestionuh/src/utils/configurations/configure_web.dart';
import 'package:gestionuh/src/utils/simple_bloc_observer.dart';
import 'package:get_it/get_it.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureApp();
  Bloc.observer = SimpleBlocObserver();
  await DependencyInjection.init();
  // Load user credentials
  await GetIt.I<AuthRepository>().initialize();
  runApp(GestionUhApp());
}
