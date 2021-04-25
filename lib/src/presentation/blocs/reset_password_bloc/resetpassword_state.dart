part of 'resetpassword_bloc.dart';

@freezed
abstract class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState.initial() = _$ResetPasswordInitialState;
  const factory ResetPasswordState.inProgress() = _$ResetPasswordInProgress;
  const factory ResetPasswordState.success() = _$ResetPasswordSuccess;
  const factory ResetPasswordState.failure({required String error}) =
      _$ResetPasswordFailure;
}
