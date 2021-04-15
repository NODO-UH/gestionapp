part of 'recover_password_bloc.dart';

@immutable
abstract class RecoverPasswordEvent {}

class RecoverPasswordCISubmit extends RecoverPasswordEvent {
  final RecoverPasswordInitial state;

  RecoverPasswordCISubmit({required this.state});
}

class RecoverPasswordFinalSubmit extends RecoverPasswordEvent {
  final RecoverPasswordQuestions state;

  RecoverPasswordFinalSubmit({required this.state});
}
