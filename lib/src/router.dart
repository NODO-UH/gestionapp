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
            child: BlocProvider<HomeBloc>(
              create: (_) => GetIt.I()..add(const HomeEvent.loadProfile()),
              child: HomePage(),
            ),
            settings: settings,
          );
        }
        return _buildPage(
          child: BlocProvider<LoginBloc>(
            create: (_) => GetIt.I()..add(const LoginEvent.start()),
            child: const LoginPage(),
          ),
          settings: settings,
        );
      case REGISTER_ROUTE_NAME:
        return _buildPage(
          child: Overlay(
            initialEntries: [
              OverlayEntry(builder: (context) {
                return BlocProvider<RegisterBloc>(
                  create: (_) =>
                      GetIt.I()..add(const RegisterEvent.questionsRequested()),
                  child: const RegisterPage(),
                );
              }),
            ],
          ),
          settings: settings,
        );
      case RECOVER_PASSWORD_ROUTE_NAME:
        return _buildPage(
          child: BlocProvider<RecoverPasswordBloc>(
            create: (_) => GetIt.I(),
            child: RecoverPasswordPage(),
          ),
          settings: settings,
        );
      case FAQS_ROUTE_NAME:
        return _buildPage(
          child: const FaqsPage(),
          settings: settings,
        );
      case HOME_ROUTE_NAME:
      default:
        final authRepo = GetIt.I<AuthRepository>();
        if (authRepo.logged) {
          return _buildPage(
            child: BlocProvider<HomeBloc>(
              create: (_) => GetIt.I()..add(const HomeEvent.loadProfile()),
              child: HomePage(),
            ),
            settings: settings,
          );
        }
        return _buildPage(
          child: BlocProvider<LoginBloc>(
            create: (_) => GetIt.I()..add(const LoginEvent.start()),
            child: const LoginPage(),
          ),
          settings: settings,
        );
    }
  }

  static PageRoute _buildPage({
    required Widget child,
    required RouteSettings settings,
  }) {
    return PageTransition(
      child: child,
      settings: settings,
      type: PageTransitionType.fade,
    );
  }
}
