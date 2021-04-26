import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestionuh/src/data/local/local_storage.dart';
import 'package:gestionuh/src/data/repositories/repositories.dart';
import 'package:gestionuh/src/utils/constants/constants.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository authRepository;
  final ILocalStorage localStorage;

  LoginBloc({
    required this.authRepository,
    required this.localStorage,
  }) : super(const LoginState.initial());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    yield* event.map(
      start: loginStart,
      loginAttempted: loginAttemptedHandler,
    );
  }

  Stream<LoginState> loginStart(_$LoginStart event) async* {
    if (await localStorage.isFirstTime()) {
      await localStorage.useFirstTime();
      yield const LoginState.firstTime();
    }
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
