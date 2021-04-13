part of 'resetpassword_bloc.dart';

abstract class ResetPasswordState {
  const ResetPasswordState();
}

class ResetPasswordInitial extends ResetPasswordState {
  final String error;

  const ResetPasswordInitial({required this.error}) : super();
}

class ResetPasswordInProgress extends ResetPasswordState {}

class ResetPasswordSuccess extends ResetPasswordState {}
