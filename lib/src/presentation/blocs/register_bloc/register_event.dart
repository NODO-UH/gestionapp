part of 'register_bloc.dart';

abstract class RegisterEvent {
  const RegisterEvent();
}

class QuestionsRequestedRegister extends RegisterEvent {}

class FormsEnteredRegister extends RegisterEvent {
  final List<String> answers;
  final String ci;
  final String passwordFirst;
  final String passwordSecond;
  final List<String> questions;

  const FormsEnteredRegister({
    required this.answers,
    required this.ci,
    required this.passwordFirst,
    required this.passwordSecond,
    required this.questions,
  });
}
