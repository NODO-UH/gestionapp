import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestionuh/src/data/repositories/repositories.dart';
import 'package:gestionuh/src/utils/constants/constants.dart';

part 'resetpassword_event.dart';
part 'resetpassword_state.dart';
part 'resetpassword_bloc.freezed.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  final AuthRepository authRepository;

  ResetPasswordBloc({
    required this.authRepository,
  }) : super(const ResetPasswordState.initial());

  @override
  Stream<ResetPasswordState> mapEventToState(
    ResetPasswordEvent event,
  ) async* {
    yield* event.map(resetPasswordAttempted: resetPasswordAttemptedHandler);
  }

  Stream<ResetPasswordState> resetPasswordAttemptedHandler(
    _$ResetPasswordAttempted event,
  ) async* {
    yield const ResetPasswordState.inProgress();
    if (event.passwordFirst != event.passwordSecond) {
      yield const ResetPasswordState.failure(
          error: 'Las contraseñas no coinciden.');
      return;
    }
    final status = await authRepository.resetPassword(
      event.currentPassword.trim(),
      event.passwordFirst.trim(),
    );
    if (status.status ?? false) {
      yield const ResetPasswordState.success();
    } else {
      yield ResetPasswordState.failure(
        error: status.error ?? Errors.DefaultError,
      );
    }
  }
}
