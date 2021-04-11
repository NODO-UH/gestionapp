import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestionuh/src/data/models.dart';
import 'package:gestionuh/src/data/repository.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository profileRepository;

  ProfileBloc({
    required this.profileRepository,
  }) : super(ProfileInitial());

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    if (event is ProfileInitialized) {
      yield* handleProfileInitialized(event);
    }
  }

  Stream<ProfileState> handleProfileInitialized(
      ProfileInitialized event) async* {
    yield ProfileLoadInProgress();
    var result = await profileRepository.getUserData();
    if (result == null) {
      yield ProfileLoadedFailure(
        error: 'Ha ocurrido un error inesperado.',
      );
    } else if (result.error != null) {
      yield ProfileLoadedFailure(
        error: result.error!,
      );
    } else {
      yield ProfileLoadedSuccess(
        profile: result,
      );
    }
  }
}
