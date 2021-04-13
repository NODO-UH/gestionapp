import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:gestionuh/src/data/models.dart';
import 'package:gestionuh/src/data/repository.dart';
import 'package:meta/meta.dart';

part 'recover_password_event.dart';
part 'recover_password_state.dart';

class RecoverPasswordBloc
    extends Bloc<RecoverPasswordEvent, RecoverPasswordState> {
  final RecoverPasswordRepository recoverPasswordRepository;

  RecoverPasswordBloc({required this.recoverPasswordRepository})
      : super(RecoverPasswordInitial(ci: TextEditingController()));

  @override
  Stream<RecoverPasswordState> mapEventToState(
    RecoverPasswordEvent event,
  ) async* {
    if (event is RecoverPasswordCISubmit) {
      yield* handleCISubmit(event);
    }
    if (event is RecoverPasswordFinalSubmit) {
      yield* handleFinalSubmit(event);
    }
  }

  Stream<RecoverPasswordState> handleCISubmit(
    RecoverPasswordCISubmit event,
  ) async* {
    yield RecoverPasswordCILoading(ci: event.state.ci);
    final result = await recoverPasswordRepository.getUserSecurityQuestions(
      event.state.ci.text.trim(),
    );
    if (result == null) {
      yield RecoverPasswordCIError(
        ci: event.state.ci,
        error: 'Ha ocurrido un error inesperado.',
      );
    } else if (result.error != null) {
      yield RecoverPasswordCIError(
        ci: event.state.ci,
        error: result.error!,
      );
    } else if (result.questions != null) {
      yield RecoverPasswordCIError(
        ci: event.state.ci,
        error: 'Ha ocurrido un error inesperado.',
      );
    } else {
      yield RecoverPasswordQuestions(
        ci: event.state.ci.text.trim(),
        questions: result.questions!,
        answers: result.questions!.map((_) => TextEditingController()).toList(),
        password: TextEditingController(),
      );
    }
  }

  Stream<RecoverPasswordState> handleFinalSubmit(
    RecoverPasswordFinalSubmit event,
  ) async* {
    yield RecoverPasswordQuestionsLoading(
      ci: event.state.ci,
      questions: event.state.questions,
      answers: event.state.answers,
      password: event.state.password,
    );
    final result = await recoverPasswordRepository.passwordRecovery(
      PasswordEditData(
        ci: event.state.ci,
        questions: event.state.questions,
        answers: event.state.answers.map((e) => e.text.trim()).toList(),
        password: event.state.password.text.trim(),
      ),
    );
    if (result == null) {
      yield RecoverPasswordQuestionsError(
        ci: event.state.ci,
        questions: event.state.questions,
        answers: event.state.answers,
        password: event.state.password,
        error: 'Ha ocurrido un error inesperado.',
      );
    } else if (result.error != null) {
      yield RecoverPasswordQuestionsError(
        ci: event.state.ci,
        questions: event.state.questions,
        answers: event.state.answers,
        password: event.state.password,
        error: result.error!,
      );
    } else if (result.userID != null) {
      yield RecoverPasswordQuestionsError(
        ci: event.state.ci,
        questions: event.state.questions,
        answers: event.state.answers,
        password: event.state.password,
        error: 'Ha ocurrido un error inesperado.',
      );
    } else {
      yield RecoverPasswordSuccess(userId: result.userID!);
    }
  }
}
