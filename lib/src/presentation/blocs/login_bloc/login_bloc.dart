import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  @override
  LoginState get initialState => throw UnimplementedError();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) {
    throw UnimplementedError();
  }
}
