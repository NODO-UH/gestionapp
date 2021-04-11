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
    required this.username,
    required this.password,
    required this.rememberMe,
  });

  @override
  List<Object> get props => [username, password, rememberMe];
}
