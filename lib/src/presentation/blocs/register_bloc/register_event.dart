part of 'register_bloc.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class QuestionsRequestedRegister extends RegisterEvent {}

class FormsEnteredRegister extends RegisterEvent {
  final SignUpData data;

  const FormsEnteredRegister({
    this.data,
  });

  @override
  List<Object> get props => [data];
}
