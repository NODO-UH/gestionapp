part of 'login_bloc.dart';

class LoginEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoginAttempted extends LoginEvent {
  final String username;
  final String password;

  LoginAttempted({
    this.username,
    this.password,
  });

  @override
  List<Object> get props => [username, password];
}
