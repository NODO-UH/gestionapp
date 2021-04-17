import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestionuh/deps_injector.dart';
import 'package:gestionuh/src/data/repository/auth_repository/auth_repository.dart';
import 'package:gestionuh/src/presentation/blocs.dart';
import 'package:gestionuh/src/presentation/pages.dart';
import 'package:gestionuh/src/presentation/pages/about_page.dart';
import 'package:gestionuh/src/presentation/pages/register_page.dart';
import 'package:gestionuh/src/presentation/theme.dart';
import 'package:gestionuh/src/utils/constants.dart';
import 'package:gestionuh/src/utils/constants/routes.dart';

class GestionUhApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appName,
      theme: gestionuhLightTheme,
      debugShowCheckedModeBanner: Constants.testMode,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case LOGIN_ROUTE_NAME:
            final authRepo = di<AuthRepository>();
            if (authRepo.logged) {
              return _buildPage(
                builder: (_) => BlocProvider<QuotaBloc>(
                  create: (_) => di()..add(QuotaInitialized()),
                  child: const QuotaPage(),
                ),
                settings: settings,
              );
            }
            return _buildPage(
              builder: (_) => BlocProvider<LoginBloc>(
                create: (_) => di(),
                child: const LoginPage(),
              ),
              settings: settings,
            );
          case QUOTA_ROUTE_NAME:
            return _buildPage(
              builder: (_) => BlocProvider<QuotaBloc>(
                create: (_) => di()..add(QuotaInitialized()),
                child: const QuotaPage(),
              ),
              settings: settings,
            );
          case PROFILE_ROUTE_NAME:
            return _buildPage(
              builder: (_) => BlocProvider<ProfileBloc>(
                create: (_) => di()..add(ProfileInitialized()),
                child: const ProfilePage(),
              ),
              settings: settings,
            );
          case MAIL_ROUTE_NAME:
            return _buildPage(
              builder: (_) => BlocProvider<MailQuotaBloc>(
                create: (_) => di()..add(MailQuotaInitialized()),
                child: const MailQuotaPage(),
              ),
              settings: settings,
            );
          case RESET_PASSWORD_ROUTE_NAME:
            return _buildPage(
              builder: (_) => BlocProvider<ResetPasswordBloc>(
                create: (_) => di(),
                child: const ResetPasswordPage(),
              ),
              settings: settings,
            );
          case REGISTER_ROUTE_NAME:
            return _buildPage(
              builder: (_) => Overlay(
                initialEntries: [
                  OverlayEntry(builder: (context) {
                    return BlocProvider<RegisterBloc>(
                      create: (_) => di()..add(QuestionsRequestedRegister()),
                      child: const RegisterPage(),
                    );
                  }),
                ],
              ),
              settings: settings,
            );
          case ABOUT_ROUTE_NAME:
            return _buildPage(
              builder: (_) => const AboutInformationPage(),
              settings: settings,
            );
          case RECOVER_PASSWORD_ROUTE_NAME:
            return _buildPage(
              builder: (_) => BlocProvider<RecoverPasswordBloc>(
                create: (_) => di(),
                child: RecoverPasswordPage(),
              ),
              settings: settings,
            );
          default:
            final authRepo = di<AuthRepository>();
            if (authRepo.logged) {
              return _buildPage(
                builder: (_) => BlocProvider<ProfileBloc>(
                  create: (_) => di()..add(ProfileInitialized()),
                  child: const ProfilePage(),
                ),
                settings: settings,
              );
            }
            return _buildPage(
              builder: (_) => BlocProvider<LoginBloc>(
                create: (_) => di(),
                child: const LoginPage(),
              ),
              settings: settings,
            );
        }
      },
    );
  }

  PageRoute _buildPage({
    required WidgetBuilder builder,
    required RouteSettings settings,
  }) {
    return MaterialPageRoute(
      builder: builder,
      settings: settings,
    );
  }
}
