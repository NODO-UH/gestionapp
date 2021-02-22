import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestionuh/src/data/repository/auth_repository/auth_repository.dart';

import 'package:gestionuh/src/presentation/blocs.dart';

import 'deps_injector.dart';
import 'src/presentation/pages.dart';
import 'src/presentation/theme.dart';
import 'src/utils/constants.dart';

class GestionUhApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appName,
      theme: gestionuhLightTheme,
      debugShowCheckedModeBanner: Constants.TestMode,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case LOGIN_ROUTE_NAME:
            var authRepo = di<AuthRepository>();
            if (authRepo.logged)
              return MaterialPageRoute(
                builder: (_) => BlocProvider<QuotaBloc>(
                  create: (_) => di()..add(QuotaInitialized()),
                  child: QuotaPage(),
                ),
              );
            return MaterialPageRoute(
              builder: (_) => BlocProvider<LoginBloc>(
                create: (_) => di(),
                child: LoginPage(),
              ),
            );
          case QUOTA_ROUTE_NAME:
            return MaterialPageRoute(
              builder: (_) => BlocProvider<QuotaBloc>(
                create: (_) => di()..add(QuotaInitialized()),
                child: QuotaPage(),
              ),
            );
          default:
            var authRepo = di<AuthRepository>();
            if (authRepo.logged)
              return MaterialPageRoute(
                builder: (_) => BlocProvider<QuotaBloc>(
                  create: (_) => di()..add(QuotaInitialized()),
                  child: QuotaPage(),
                ),
              );
            return MaterialPageRoute(
              builder: (_) => BlocProvider<LoginBloc>(
                create: (_) => di(),
                child: LoginPage(),
              ),
            );
        }
      },
    );
  }
}
