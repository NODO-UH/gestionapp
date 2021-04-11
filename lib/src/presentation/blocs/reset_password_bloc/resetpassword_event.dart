part of 'resetpassword_bloc.dart';

abstract class ResetPasswordEvent extends Equatable {
  const ResetPasswordEvent();

  @override
  List<Object> get props => [];
}

class ResetPasswordAttempted extends ResetPasswordEvent {
  final String passwordFirst;
  final String passwordSecond;

  const ResetPasswordAttempted({
    required this.passwordFirst,
    required this.passwordSecond,
  });
}
