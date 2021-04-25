import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestionuh/src/data/models/models.dart';
import 'package:gestionuh/src/data/repositories/repositories.dart';
import 'package:gestionuh/src/utils/constants/constants.dart';

part 'recover_password_bloc.freezed.dart';
part 'recover_password_event.dart';
part 'recover_password_state.dart';

class RecoverPasswordBloc
    extends Bloc<RecoverPasswordEvent, RecoverPasswordState> {
  final RecoverPasswordRepository recoverPasswordRepository;

  RecoverPasswordBloc({required this.recoverPasswordRepository})
      : super(RecoverPasswordState.initial(TextEditingController()));

  @override
  Stream<RecoverPasswordState> mapEventToState(
    RecoverPasswordEvent event,
  ) async* {
    yield* event.when(
      ciSubmit: handleCISubmit,
      finalSubmit: handleFinalSubmit,
    );
  }

  Stream<RecoverPasswordState> handleCISubmit(TextEditingController ci) async* {
    yield RecoverPasswordState.ciLoading(ci);
    final result = await recoverPasswordRepository.getUserSecurityQuestions(
      ci.text.trim(),
    );
    if (result == null) {
      yield RecoverPasswordState.ciError(ci, Errors.DefaultError);
    } else if (result.error != null) {
      yield RecoverPasswordState.ciError(ci, result.error!);
    } else if (result.questions == null) {
      yield RecoverPasswordState.ciError(ci, Errors.DefaultError);
    } else {
      yield RecoverPasswordState.questions(
        ci.text.trim(),
        result.questions!,
        result.questions!.map((_) => TextEditingController()).toList(),
        TextEditingController(),
      );
    }
  }

  Stream<RecoverPasswordState> handleFinalSubmit(
    String ci,
    List<String> questions,
    List<TextEditingController> answers,
    TextEditingController password,
  ) async* {
    yield RecoverPasswordState.questionsLoading(
      ci,
      questions,
      answers,
      password,
    );
    final result = await recoverPasswordRepository.passwordRecovery(
      PasswordResetData(
        ci: ci,
        questions: questions,
        answers: answers.map((e) => e.text.trim()).toList(),
        newPassword: password.text.trim(),
      ),
    );
    if (result == null) {
      yield RecoverPasswordState.questionsError(
        ci,
        questions,
        answers,
        password,
        Errors.DefaultError,
      );
    } else if (result.error != null) {
      yield RecoverPasswordState.questionsError(
        ci,
        questions,
        answers,
        password,
        result.error!,
      );
    } else if (result.userId == null) {
      yield RecoverPasswordState.questionsError(
        ci,
        questions,
        answers,
        password,
        Errors.DefaultError,
      );
    } else {
      yield RecoverPasswordState.success(result.userId!);
    }
  }
}
