part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.success(UserData profile) = _Success;
  const factory ProfileState.error(String error) = _Error;
}
