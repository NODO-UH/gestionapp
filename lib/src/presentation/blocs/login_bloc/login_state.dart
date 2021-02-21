part of 'login_bloc.dart';

class LoginState extends Equatable {
  @override
  List<Object> get props => [];
}

class LoginAttempInitial extends LoginState {
  final String error;

  LoginAttempInitial({this.error});

  @override
  List<Object> get props => [error];
}

class LoginAttemptInProgress extends LoginState {}

class LoginAttemptSuccess extends LoginState {}
