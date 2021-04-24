import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestionuh/src/data/models/password_edit_data.dart';
import 'package:gestionuh/src/data/repositories/repositories.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthRepository repository;

  RegisterBloc({required this.repository})
      : super(const RegisterState.initial());

  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
  ) async* {
    yield* event.map(
      questionsRequested: questionsRequestedRegisterHandler,
      formSubmitted: formSubmittedRegisterHandler,
    );
  }

  Stream<RegisterState> questionsRequestedRegisterHandler(
      _QuestionsRequestedRegister _) async* {
    yield const RegisterState.initialLoadInProgress();
    final questions = await repository.getSecurityQuestions();
    if (questions.error != null) {
      yield RegisterState.initialLoadFailure(
        error: questions.error ?? 'Compruebe su conexión e intente de nuevo.',
      );
    } else {
      yield RegisterState.initialLoadSuccess(questions: questions.questions!);
    }
  }

  Stream<RegisterState> formSubmittedRegisterHandler(
    _FormSubmittedRegister event,
  ) async* {
    yield const RegisterState.registrationInProgress();
    if (event.passwordFirst != event.passwordSecond) {
      yield const RegisterState.registrationFailure(
          error: 'Las contraseñas no coinciden.');
      return;
    }
    final userId = await repository.sendRegistration(PasswordEditData(
      answers: event.answers,
      ci: event.ci,
      password: event.passwordFirst,
      questions: event.questions,
    ));
    if (userId.error != null) {
      yield RegisterState.registrationFailure(
        error: userId.error ?? 'Compruebe su conexión e intente de nuevo.',
      );
    } else {
      yield RegisterState.registrationSuccess(userEmail: userId.userId!);
    }

    //
  }
}
