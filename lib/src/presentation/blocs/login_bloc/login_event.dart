part of 'login_bloc.dart';

abstract class LoginEvent {}

class LoginAttempted extends LoginEvent {
  final String username;
  final String password;
  final bool rememberMe;

  LoginAttempted({
    required this.username,
    required this.password,
    required this.rememberMe,
  });
}
