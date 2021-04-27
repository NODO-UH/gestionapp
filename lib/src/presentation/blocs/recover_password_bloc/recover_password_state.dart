part of 'recover_password_bloc.dart';

@freezed
class RecoverPasswordState with _$RecoverPasswordState {
  const factory RecoverPasswordState.initial(
    TextEditingController ci,
    TextEditingController email,
  ) = _Initial;
  const factory RecoverPasswordState.ciLoading(
    TextEditingController ci,
    TextEditingController email,
  ) = _CILoading;
  const factory RecoverPasswordState.ciError(
    TextEditingController ci,
    TextEditingController email,
    String error,
  ) = _CIError;
  const factory RecoverPasswordState.questions(
    String ci,
    String email,
    List<String> questions,
    List<TextEditingController> answers,
    TextEditingController password,
  ) = _Questions;
  const factory RecoverPasswordState.questionsLoading(
    String ci,
    String email,
    List<String> questions,
    List<TextEditingController> answers,
    TextEditingController password,
  ) = _QuestionsLoading;
  const factory RecoverPasswordState.questionsError(
    String ci,
    String email,
    List<String> questions,
    List<TextEditingController> answers,
    TextEditingController password,
    String error,
  ) = _QuestionsError;
  const factory RecoverPasswordState.success(String userId) = _Success;
}
