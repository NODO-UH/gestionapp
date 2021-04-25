import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestionuh/src/data/repositories/repositories.dart';
import 'package:gestionuh/src/utils/constants/constants.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository authRepository;

  LoginBloc({
    required this.authRepository,
  }) : super(const LoginState.initial());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    yield* event.map(
      loginAttempted: loginAttemptedHandler,
    );
  }

  Stream<LoginState> loginAttemptedHandler(_$LoginAttempted event) async* {
    yield const LoginState.inProgress();
    final result = await authRepository.login(
      event.userName.trim(),
      event.password.trim(),
      event.rememberMe,
    );
    if (result == null || result.error != null) {
      yield LoginState.failure(
        error: result?.error ?? Errors.DefaultError,
      );
    } else {
      yield const LoginState.success();
    }
  }
}
