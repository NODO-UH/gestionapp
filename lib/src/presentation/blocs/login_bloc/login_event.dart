part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.submit(
    String username,
    String password,
    bool rememberMe,
  ) = _Submit;
}
