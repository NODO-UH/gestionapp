part of 'register_bloc.dart';

abstract class RegisterState {
  const RegisterState();
}

class RegisterInitial extends RegisterState {}

class LoadInitialDataInProgress extends RegisterState {}

class LoadInitialDataFailure extends RegisterState {
  final String error;

  const LoadInitialDataFailure({
    required this.error,
  });
}

class LoadInitialDataSuccess extends RegisterState {
  final List<String> questions;

  const LoadInitialDataSuccess({
    required this.questions,
  });
}

class RegisterUserInProgress extends RegisterState {}

class RegisterUserFailure extends RegisterState {
  final String error;

  const RegisterUserFailure({
    required this.error,
  });
}

class RegisterUserSuccess extends RegisterState {
  final String userEmail;

  const RegisterUserSuccess({
    required this.userEmail,
  });
}
