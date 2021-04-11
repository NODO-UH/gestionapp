import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'deps_injector.dart';
import 'src/data/repository/auth_repository/auth_repository.dart';
import 'src/presentation/blocs.dart';
import 'src/presentation/blocs/reset_password_bloc/resetpassword_bloc.dart';
import 'src/presentation/pages.dart';
import 'src/presentation/pages/about_page.dart';
import 'src/presentation/theme.dart';
import 'src/utils/constants.dart';
import 'src/utils/constants/routes.dart';

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
          case MAIL_ROUTE_NAME:
            return MaterialPageRoute(
              builder: (_) => BlocProvider<MailQuotaBloc>(
                create: (_) => di()..add(MailQuotaInitialized()),
                child: MailQuotaPage(),
              ),
            );
          case RESET_PASSWORD_ROUTE_NAME:
            return MaterialPageRoute(
              builder: (_) => BlocProvider<ResetPasswordBloc>(
                create: (_) => di(),
                child: ResetPasswordPage(),
              ),
            );
          case ABOUT_ROUTE_NAME:
            return MaterialPageRoute(
              builder: (_) => AboutInformationPage(),
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
