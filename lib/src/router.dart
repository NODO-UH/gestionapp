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
            builder: BlocProvider<HomeBloc>(
              create: (_) => GetIt.I()..add(const HomeEvent.loadProfile()),
              child: HomePage(),
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
      case RECOVER_PASSWORD_ROUTE_NAME:
        return _buildPage(
          builder: BlocProvider<RecoverPasswordBloc>(
            create: (_) => GetIt.I(),
            child: RecoverPasswordPage(),
          ),
          settings: settings,
        );
      case HOME_ROUTE_NAME:
      default:
        final authRepo = GetIt.I<AuthRepository>();
        if (authRepo.logged) {
          return _buildPage(
            builder: BlocProvider<HomeBloc>(
              create: (_) => GetIt.I()..add(const HomeEvent.loadProfile()),
              child: HomePage(),
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
