part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _$RegisterInitial;
  const factory RegisterState.initialLoadInProgress() =
      _$RegisterLoadInitialDataInProgress;
  const factory RegisterState.initialLoadFailure({required String error}) =
      _$RegisterLoadInitialDataFailure;
  const factory RegisterState.initialLoadSuccess(
      {required List<String> questions}) = _$RegisterLoadInitialDataSuccess;
  const factory RegisterState.registrationInProgress() =
      _$RegisterUserInProgress;
  const factory RegisterState.registrationFailure({required String error}) =
      _$RegisterUserFailure;
  const factory RegisterState.registrationSuccess({required String userEmail}) =
      _$RegisterUserSuccess;
}
