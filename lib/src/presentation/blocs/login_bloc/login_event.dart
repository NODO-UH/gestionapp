part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loginAttempted({
    required String userName,
    required String password,
    required bool rememberMe,
  }) = _$LoginAttempted;
}
