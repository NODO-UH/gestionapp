part of 'register_bloc.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
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

  @override
  List<Object> get props =>
      [answers, ci, passwordFirst, passwordSecond, questions];
}
