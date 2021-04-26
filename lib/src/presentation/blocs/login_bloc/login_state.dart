part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _$LoginInitial;
  const factory LoginState.firstTime() = _$LoginFirstTime;
  const factory LoginState.inProgress() = _$LoginAttemptInProgress;
  const factory LoginState.success() = _$LoginAttemptSuccess;
  const factory LoginState.failure({required String error}) =
      _$LoginAttemptFailure;
}
