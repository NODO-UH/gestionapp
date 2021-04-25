import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestionuh/src/data/repositories/repositories.dart';
import 'package:gestionuh/src/utils/constants/constants.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository authRepository;

  LoginBloc({
    required this.authRepository,
  }) : super(LoginAttemptInitial(error: ''));

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginAttempted) {
      yield* handleLoginAttempted(event);
    }
  }

  Stream<LoginState> handleLoginAttempted(LoginAttempted event) async* {
    yield LoginAttemptInProgress();
    final result = await authRepository.login(
      event.username.trim(),
      event.password.trim(),
      event.rememberMe,
    );
    if (result == null) {
      yield LoginAttemptInitial(
        error: Errors.DefaultError,
      );
    } else if (result.error != null) {
      yield LoginAttemptInitial(
        error: result.error!,
      );
    } else {
      yield LoginAttemptSuccess();
    }
  }
}
