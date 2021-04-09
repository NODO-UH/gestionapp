part of 'login_bloc.dart';

class LoginEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoginAttempted extends LoginEvent {
  final String username;
  final String password;
  final bool rememberMe;

  LoginAttempted({
    this.username,
    this.password,
    this.rememberMe,
  });

  @override
  List<Object> get props => [username, password, rememberMe];
}
