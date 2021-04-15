part of 'profile_bloc.dart';

abstract class ProfileState {}

class ProfileInitial extends ProfileState {}

class ProfileLoadInProgress extends ProfileState {}

class ProfileLoadedSuccess extends ProfileState {
  final UserData profile;

  ProfileLoadedSuccess({
    required this.profile,
  });
}

class ProfileLoadedFailure extends ProfileState {
  final String error;

  ProfileLoadedFailure({
    required this.error,
  });
}
