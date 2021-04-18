import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:gestionuh/src/data/repository.dart';

part 'resetpassword_event.dart';
part 'resetpassword_state.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  final AuthRepository authRepository;

  ResetPasswordBloc({
    required this.authRepository,
  }) : super(const ResetPasswordInitial(error: ''));

  @override
  Stream<ResetPasswordState> mapEventToState(
    ResetPasswordEvent event,
  ) async* {
    if (event is ResetPasswordAttempted) {
      yield* resetPasswordAttemptedHandler(event);
    }
  }

  Stream<ResetPasswordState> resetPasswordAttemptedHandler(
      ResetPasswordAttempted event) async* {
    yield ResetPasswordInProgress();
    if (event.passwordFirst != event.passwordSecond) {
      yield const ResetPasswordInitial(error: 'Las contraseñas no coinciden.');
      return;
    }
    final status = await authRepository.resetPassword(
      event.currentPassword,
      event.passwordFirst,
    );
    if (status.status ?? false) {
      yield ResetPasswordSuccess();
    } else {
      yield ResetPasswordInitial(
        error: status.error ?? 'Ocurrió un error, intente de nuevo.',
      );
    }
  }
}
