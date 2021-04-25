part of 'resetpassword_bloc.dart';

@freezed
class ResetPasswordEvent with _$ResetPasswordEvent {
  const factory ResetPasswordEvent.resetPasswordAttempted({
    required String currentPassword,
    required String passwordFirst,
    required String passwordSecond,
  }) = _$ResetPasswordAttempted;
}
