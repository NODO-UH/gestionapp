import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestionuh/src/data/models/models.dart';
import 'package:gestionuh/src/data/repositories/repositories.dart';
import 'package:gestionuh/src/utils/constants/constants.dart';

part 'quota_event.dart';
part 'quota_state.dart';

class QuotaBloc extends Bloc<QuotaEvent, QuotaState> {
  final QuotasRepository quotasRepository;

  QuotaBloc({
    required this.quotasRepository,
  }) : super(QuotaInitial());

  @override
  Stream<QuotaState> mapEventToState(QuotaEvent event) async* {
    if (event is QuotaInitialized) {
      yield* handleProfileInitialized(event);
    }
  }

  Stream<QuotaState> handleProfileInitialized(QuotaInitialized event) async* {
    yield QuotaLoadInProgress();
    final result = await quotasRepository.getQuota();
    if (result == null) {
      yield QuotaLoadedFailure(
        error: Errors.DefaultError,
      );
    } else if (result.error != null) {
      yield QuotaLoadedFailure(
        error: result.error!,
      );
    } else {
      yield QuotaLoadedSuccess(
        quota: result,
      );
    }
  }
}
