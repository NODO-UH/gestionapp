import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/signUpData.dart';
import '../../../data/repository/auth_repository/auth_repository.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthRepository repository;

  RegisterBloc({this.repository}) : super(RegisterInitial());

  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
  ) async* {
    if (event is QuestionsRequestedRegister)
      yield* questionsRequestedRegisterHandler(event);

    if (event is FormsEnteredRegister)
      yield* formsEnteredRegisterHandler(event);
  }

  Stream<RegisterState> questionsRequestedRegisterHandler(
      QuestionsRequestedRegister event) async* {
    yield LoadInitialDataInProgress();
    final questions = await repository.getSecurityQuestions();
    if (questions.error != null)
      yield LoadInitialDataFailure(error: questions.error);
    else
      yield LoadInitialDataSuccess(questions: questions.questions);
    //
  }

  Stream<RegisterState> formsEnteredRegisterHandler(
      FormsEnteredRegister event) async* {
    yield RegisterUserInProgress();
    if (event.passwordFirst != event.passwordSecond) {
      yield RegisterUserFailure(error: 'Las contraseñas no coinciden.');
      return;
    }
    final userId = await repository.sendRegistration(SignUpData(
      answers: event.answers,
      ci: event.ci,
      password: event.passwordFirst,
      questions: event.questions,
    ));
    if (userId.error != null)
      yield RegisterUserFailure(error: userId.error);
    else
      yield RegisterUserSuccess(userEmail: userId.userID);

    //
  }
}
