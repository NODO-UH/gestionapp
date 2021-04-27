part of 'recover_password_bloc.dart';

@freezed
class RecoverPasswordEvent with _$RecoverPasswordEvent {
  const factory RecoverPasswordEvent.ciSubmit(
    TextEditingController ci,
    TextEditingController email,
  ) = _CISubmit;
  const factory RecoverPasswordEvent.finalSubmit(
    String ci,
    String email,
    List<String> questions,
    List<TextEditingController> answers,
    TextEditingController password,
  ) = _FinalSubmit;
}
