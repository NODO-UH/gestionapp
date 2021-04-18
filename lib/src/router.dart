import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestionuh/src/data/repositories/repositories.dart';
import 'package:gestionuh/src/presentation/blocs/blocs.dart';
import 'package:gestionuh/src/presentation/pages/pages.dart';
import 'package:gestionuh/src/utils/constants/constants.dart';
import 'package:get_it/get_it.dart';
import 'package:page_transition/page_transition.dart';

class RouterNavigation {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LOGIN_ROUTE_NAME:
        final authRepo = GetIt.I<AuthRepository>();
        if (authRepo.logged) {
          return _buildPage(
            builder: BlocProvider<QuotaBloc>(
              create: (_) => GetIt.I()..add(QuotaInitialized()),
              child: const QuotaPage(),
            ),
            settings: settings,
          );
        }
        return _buildPage(
          builder: BlocProvider<LoginBloc>(
            create: (_) => GetIt.I(),
            child: const LoginPage(),
          ),
          settings: settings,
        );
      case QUOTA_ROUTE_NAME:
        return _buildPage(
          builder: BlocProvider<QuotaBloc>(
            create: (_) => GetIt.I()..add(QuotaInitialized()),
            child: const QuotaPage(),
          ),
          settings: settings,
        );
      case PROFILE_ROUTE_NAME:
        return _buildPage(
          builder: BlocProvider<ProfileBloc>(
            create: (_) => GetIt.I()..add(ProfileInitialized()),
            child: const ProfilePage(),
          ),
          settings: settings,
        );
      case MAIL_ROUTE_NAME:
        return _buildPage(
          builder: BlocProvider<MailQuotaBloc>(
            create: (_) => GetIt.I()..add(MailQuotaInitialized()),
            child: const MailQuotaPage(),
          ),
          settings: settings,
        );
      case RESET_PASSWORD_ROUTE_NAME:
        return _buildPage(
          builder: BlocProvider<ResetPasswordBloc>(
            create: (_) => GetIt.I(),
            child: const ResetPasswordPage(),
          ),
          settings: settings,
        );
      case REGISTER_ROUTE_NAME:
        return _buildPage(
          builder: Overlay(
            initialEntries: [
              OverlayEntry(builder: (context) {
                return BlocProvider<RegisterBloc>(
                  create: (_) => GetIt.I()..add(QuestionsRequestedRegister()),
                  child: const RegisterPage(),
                );
              }),
            ],
          ),
          settings: settings,
        );
      case ABOUT_ROUTE_NAME:
        return _buildPage(
          builder: const AboutInformationPage(),
          settings: settings,
        );
      case RECOVER_PASSWORD_ROUTE_NAME:
        return _buildPage(
          builder: BlocProvider<RecoverPasswordBloc>(
            create: (_) => GetIt.I(),
            child: RecoverPasswordPage(),
          ),
          settings: settings,
        );
      default:
        final authRepo = GetIt.I<AuthRepository>();
        if (authRepo.logged) {
          return _buildPage(
            builder: BlocProvider<ProfileBloc>(
              create: (_) => GetIt.I()..add(ProfileInitialized()),
              child: const ProfilePage(),
            ),
            settings: settings,
          );
        }
        return _buildPage(
          builder: BlocProvider<LoginBloc>(
            create: (_) => GetIt.I(),
            child: const LoginPage(),
          ),
          settings: settings,
        );
    }
  }

  static PageRoute _buildPage({
    required Widget builder,
    required RouteSettings settings,
  }) {
    return PageTransition(
      child: builder,
      settings: settings,
      type: PageTransitionType.fade,
    );
  }
}
