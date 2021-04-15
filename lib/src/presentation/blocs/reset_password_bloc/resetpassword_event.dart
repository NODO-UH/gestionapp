part of 'resetpassword_bloc.dart';

abstract class ResetPasswordEvent {
  const ResetPasswordEvent();
}

class ResetPasswordAttempted extends ResetPasswordEvent {
  final String passwordFirst;
  final String passwordSecond;

  const ResetPasswordAttempted({
    required this.passwordFirst,
    required this.passwordSecond,
  });
}
