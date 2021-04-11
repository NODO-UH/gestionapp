part of 'register_bloc.dart';

abstract class RegisterState extends Equatable {
  const RegisterState();

  @override
  List<Object> get props => [];
}

class RegisterInitial extends RegisterState {}

class LoadInitialDataInProgress extends RegisterState {}

class LoadInitialDataFailure extends RegisterState {
  final String error;

  const LoadInitialDataFailure({
    this.error,
  });

  @override
  List<Object> get props => [error];
}

class LoadInitialDataSuccess extends RegisterState {
  final List<String> questions;

  const LoadInitialDataSuccess({
    this.questions,
  });
  @override
  List<Object> get props => [questions];
}

class RegisterUserInProgress extends RegisterState {}

class RegisterUserFailure extends RegisterState {
  final String error;

  const RegisterUserFailure({
    this.error,
  });

  @override
  List<Object> get props => [error];
}

class RegisterUserSuccess extends RegisterState {
  final String userEmail;

  const RegisterUserSuccess({
    this.userEmail,
  });
  @override
  List<Object> get props => [userEmail];
}
