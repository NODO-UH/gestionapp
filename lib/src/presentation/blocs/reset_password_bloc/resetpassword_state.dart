part of 'resetpassword_bloc.dart';

@freezed
abstract class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState.initial() = _ResetPasswordInitialState;
  const factory ResetPasswordState.inProgress() = _ResetPasswordInProgress;
  const factory ResetPasswordState.success() = _ResetPasswordSuccess;
  const factory ResetPasswordState.failure({required String error}) =
      _ResetPasswordFailure;
}
