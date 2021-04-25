part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _Loading;
  const factory HomeState.error(String message) = _Error;
  const factory HomeState.logout() = _Logout;
  const factory HomeState.profile(
    UserData profile,
    List<HomeItemEnum> items,
  ) = _Profile;
  const factory HomeState.quota(
    UserData profile,
    List<HomeItemEnum> items,
  ) = _Quota;
  const factory HomeState.mailQuota(
    UserData profile,
    List<HomeItemEnum> items,
  ) = _MailQuota;
  const factory HomeState.resetPassword(
    UserData profile,
    List<HomeItemEnum> items,
  ) = _ResetPassword;
  const factory HomeState.aboutUs(
    UserData profile,
    List<HomeItemEnum> items,
  ) = _AboutUs;
  const factory HomeState.helpfulLinks(
    UserData profile,
    List<HomeItemEnum> items,
  ) = _HelpfulLinks;
}
