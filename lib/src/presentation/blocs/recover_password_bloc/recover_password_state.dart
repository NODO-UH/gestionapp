part of 'recover_password_bloc.dart';

@immutable
abstract class RecoverPasswordState {}

class RecoverPasswordError extends RecoverPasswordState {
  final String error;

  RecoverPasswordError({required this.error});
}

class RecoverPasswordInitial extends RecoverPasswordState {
  final TextEditingController ci;

  RecoverPasswordInitial({required this.ci});
}

class RecoverPasswordCILoading extends RecoverPasswordInitial {
  RecoverPasswordCILoading({
    required TextEditingController ci,
  }) : super(ci: ci);
}

class RecoverPasswordCIError extends RecoverPasswordInitial
    implements RecoverPasswordError {
  @override
  final String error;

  RecoverPasswordCIError({
    required TextEditingController ci,
    required this.error,
  }) : super(ci: ci);
}

class RecoverPasswordQuestions extends RecoverPasswordState {
  final String ci;
  final List<String> questions;
  final List<TextEditingController> answers;
  final TextEditingController password;

  RecoverPasswordQuestions({
    required this.ci,
    required this.questions,
    required this.answers,
    required this.password,
  });
}

class RecoverPasswordQuestionsLoading extends RecoverPasswordQuestions {
  RecoverPasswordQuestionsLoading({
    required String ci,
    required List<String> questions,
    required List<TextEditingController> answers,
    required TextEditingController password,
  }) : super(
          ci: ci,
          questions: questions,
          answers: answers,
          password: password,
        );
}

class RecoverPasswordQuestionsError extends RecoverPasswordQuestions
    implements RecoverPasswordError {
  @override
  final String error;

  RecoverPasswordQuestionsError({
    required String ci,
    required List<String> questions,
    required List<TextEditingController> answers,
    required TextEditingController password,
    required this.error,
  }) : super(
          ci: ci,
          questions: questions,
          answers: answers,
          password: password,
        );
}

class RecoverPasswordSuccess extends RecoverPasswordState {
  final String userId;

  RecoverPasswordSuccess({required this.userId});
}
