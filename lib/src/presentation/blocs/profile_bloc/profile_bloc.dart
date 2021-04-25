import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestionuh/src/data/models/models.dart';
import 'package:gestionuh/src/data/repositories/repositories.dart';
import 'package:gestionuh/src/utils/constants/constants.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository profileRepository;

  ProfileBloc({
    required this.profileRepository,
  }) : super(const ProfileState.loading());

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    yield* event.when(
      load: handleProfileInitialized,
    );
  }

  Stream<ProfileState> handleProfileInitialized() async* {
    yield const ProfileState.loading();
    final result = await profileRepository.getUserData();
    if (result == null) {
      yield const ProfileState.error(Errors.DefaultError);
    } else if (result.error != null) {
      yield ProfileState.error(result.error!);
    } else {
      yield ProfileState.success(result);
    }
  }
}
