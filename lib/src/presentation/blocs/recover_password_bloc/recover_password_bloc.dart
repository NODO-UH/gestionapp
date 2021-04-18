import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:gestionuh/src/data/models.dart';
import 'package:gestionuh/src/data/repository.dart';
import 'package:gestionuh/src/utils/constants.dart';

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
        error: Errors.DefaultError,
      );
    } else if (result.error != null) {
      yield RecoverPasswordCIError(
        ci: event.state.ci,
        error: result.error!,
      );
    } else if (result.questions == null) {
      yield RecoverPasswordCIError(
        ci: event.state.ci,
        error: Errors.DefaultError,
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
      PasswordResetData(
        ci: event.state.ci,
        questions: event.state.questions,
        answers: event.state.answers.map((e) => e.text.trim()).toList(),
        newPassword: event.state.password.text.trim(),
      ),
    );
    if (result == null) {
      yield RecoverPasswordQuestionsError(
        ci: event.state.ci,
        questions: event.state.questions,
        answers: event.state.answers,
        password: event.state.password,
        error: Errors.DefaultError,
      );
    } else if (result.error != null) {
      yield RecoverPasswordQuestionsError(
        ci: event.state.ci,
        questions: event.state.questions,
        answers: event.state.answers,
        password: event.state.password,
        error: result.error!,
      );
    } else if (result.userId == null) {
      yield RecoverPasswordQuestionsError(
        ci: event.state.ci,
        questions: event.state.questions,
        answers: event.state.answers,
        password: event.state.password,
        error: Errors.DefaultError,
      );
    } else {
      yield RecoverPasswordSuccess(userId: result.userId!);
    }
  }
}
