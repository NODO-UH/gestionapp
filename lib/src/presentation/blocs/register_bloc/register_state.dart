part of 'register_bloc.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _RegisterInitial;
  const factory RegisterState.initialLoadInProgress() =
      _RegisterLoadInitialDataInProgress;
  const factory RegisterState.initialLoadFailure({required String error}) =
      _RegisterLoadInitialDataFailure;
  const factory RegisterState.initialLoadSuccess(
      {required List<String> questions}) = _RegisterLoadInitialDataSuccess;
  const factory RegisterState.registrationInProgress() =
      _RegisterUserInProgress;
  const factory RegisterState.registrationFailure({required String error}) =
      _RegisterUserFailure;
  const factory RegisterState.registrationSuccess({required String userEmail}) =
      _RegisterUserSuccess;
}
