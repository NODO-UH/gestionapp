import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestionuh/src/data/repositories/repositories.dart';
import 'package:gestionuh/src/utils/constants/constants.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository authRepository;

  LoginBloc({
    required this.authRepository,
  }) : super(const LoginState.initial());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    yield* event.when(
      submit: handleLoginAttempted,
    );
  }

  Stream<LoginState> handleLoginAttempted(
    String username,
    String password,
    bool rememberMe,
  ) async* {
    yield const LoginState.loading();
    final result = await authRepository.login(
      username.trim(),
      password.trim(),
      rememberMe,
    );
    if (result == null) {
      yield const LoginState.error(Errors.DefaultError);
    } else if (result.error != null) {
      yield LoginState.error(result.error!);
    } else {
      yield const LoginState.success();
    }
  }
}
