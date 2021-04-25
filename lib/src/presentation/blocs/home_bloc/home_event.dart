part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.loadProfile() = _LoadProfile;
  const factory HomeEvent.logout() = _SendLogout;
  const factory HomeEvent.goToProfile(UserData profile) = _GoToProfile;
  const factory HomeEvent.goToQuota(UserData profile) = _GoToQuota;
  const factory HomeEvent.goToMailQuota(UserData profile) = _GoToMailQuota;
  const factory HomeEvent.goToResetPassword(UserData profile) =
      _GoToResetPassword;
  const factory HomeEvent.goToAboutUs(UserData profile) = _GoToAboutUs;
}
