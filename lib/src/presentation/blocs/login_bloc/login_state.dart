part of 'login_bloc.dart';

abstract class LoginState {}

class LoginAttemptInitial extends LoginState {
  final String error;

  LoginAttemptInitial({required this.error});
}

class LoginAttemptInProgress extends LoginState {}

class LoginAttemptSuccess extends LoginState {}
