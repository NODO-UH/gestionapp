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
      : super(RecoverPasswordState.initial(
          TextEditingController(),
          TextEditingController(),
        ));

  @override
  Stream<RecoverPasswordState> mapEventToState(
    RecoverPasswordEvent event,
  ) async* {
    yield* event.when(
      ciSubmit: handleCISubmit,
      finalSubmit: handleFinalSubmit,
    );
  }

  Stream<RecoverPasswordState> handleCISubmit(
    TextEditingController ci,
    TextEditingController email,
  ) async* {
    yield RecoverPasswordState.ciLoading(ci, email);
    final result = await recoverPasswordRepository.getUserSecurityQuestions(
      ci.text.trim(),
      email.text.trim(),
    );
    if (result == null) {
      yield RecoverPasswordState.ciError(ci, email, Errors.DefaultError);
    } else if (result.error != null) {
      yield RecoverPasswordState.ciError(ci, email, result.error!);
    } else if (result.questions == null) {
      yield RecoverPasswordState.ciError(ci, email, Errors.DefaultError);
    } else {
      yield RecoverPasswordState.questions(
        ci.text.trim(),
        email.text.trim(),
        result.questions!,
        result.questions!.map((_) => TextEditingController()).toList(),
        TextEditingController(),
      );
    }
  }

  Stream<RecoverPasswordState> handleFinalSubmit(
    String ci,
    String email,
    List<String> questions,
    List<TextEditingController> answers,
    TextEditingController password,
  ) async* {
    yield RecoverPasswordState.questionsLoading(
      ci,
      email,
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
        email: email,
      ),
    );
    if (result == null) {
      yield RecoverPasswordState.questionsError(
        ci,
        email,
        questions,
        answers,
        password,
        Errors.DefaultError,
      );
    } else if (result.error != null) {
      yield RecoverPasswordState.questionsError(
        ci,
        email,
        questions,
        answers,
        password,
        result.error!,
      );
    } else if (result.userId == null) {
      yield RecoverPasswordState.questionsError(
        ci,
        email,
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
