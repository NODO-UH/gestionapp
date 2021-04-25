import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestionuh/src/data/enums/enums.dart';
import 'package:gestionuh/src/data/models/models.dart';
import 'package:gestionuh/src/data/repositories/repositories.dart';
import 'package:gestionuh/src/utils/constants/constants.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final AuthRepository authRepository;
  final ProfileRepository profileRepository;
  HomeBloc({
    required this.authRepository,
    required this.profileRepository,
  }) : super(const HomeState.loading());

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield* event.when(
      loadProfile: () async* {
        yield const HomeState.loading();
        final result = await profileRepository.getUserData();
        if (result == null) {
          yield const HomeState.error(Errors.DefaultError);
        } else if (result.error != null) {
          yield HomeState.error(result.error!);
        } else {
          add(HomeEvent.goToProfile(result));
        }
      },
      goToProfile: (profile) async* {
        yield HomeState.profile(
          profile,
          _getItemsByProfile(profile),
        );
      },
      goToQuota: (profile) async* {
        yield HomeState.quota(
          profile,
          _getItemsByProfile(profile),
        );
      },
      goToMailQuota: (profile) async* {
        yield HomeState.mailQuota(
          profile,
          _getItemsByProfile(profile),
        );
      },
      goToResetPassword: (profile) async* {
        yield HomeState.resetPassword(
          profile,
          _getItemsByProfile(profile),
        );
      },
      goToAboutUs: (profile) async* {
        yield HomeState.aboutUs(
          profile,
          _getItemsByProfile(profile),
        );
      },
      goToHelpfulLinks: (profile) async* {
        yield HomeState.helpfulLinks(
          profile,
          _getItemsByProfile(profile),
        );
      },
      logout: () async* {
        yield const HomeState.loading();
        await authRepository.logout();
        yield const HomeState.logout();
      },
    );
  }

  List<HomeItemEnum> _getItemsByProfile(UserData profile) {
    return [
      HomeItemEnum.Profile,
      if (profile.hasInternet ?? false) HomeItemEnum.Quota,
      if (profile.hasEmail ?? false) HomeItemEnum.MailQuota,
      HomeItemEnum.ResetPassword,
      HomeItemEnum.HelpfulLinks,
      HomeItemEnum.AboutUs,
      HomeItemEnum.Separator,
      HomeItemEnum.Logout,
    ];
  }
}
