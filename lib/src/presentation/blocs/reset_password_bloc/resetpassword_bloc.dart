import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repository.dart';

part 'resetpassword_event.dart';
part 'resetpassword_state.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  final AuthRepository authRepository;

  @override
  ResetPasswordState get initialState => ResetPasswordInitial();

  ResetPasswordBloc({
    this.authRepository,
  }) : super();

  @override
  Stream<ResetPasswordState> mapEventToState(
    ResetPasswordEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
