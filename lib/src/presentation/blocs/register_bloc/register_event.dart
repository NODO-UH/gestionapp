part of 'register_bloc.dart';

@freezed
abstract class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.questionsRequested() =
      _$QuestionsRequestedRegister;
  const factory RegisterEvent.formSubmitted({
    required List<String> answers,
    required String ci,
    required String passwordFirst,
    required String passwordSecond,
    required List<String> questions,
  }) = _$FormSubmittedRegister;
}
