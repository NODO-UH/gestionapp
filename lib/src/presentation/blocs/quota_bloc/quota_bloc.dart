import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gestionuh/src/data/models.dart';
import 'package:gestionuh/src/data/repository.dart';

part 'quota_event.dart';
part 'quota_state.dart';

class QuotaBloc extends Bloc<QuotaEvent, QuotaState> {
  final QuotasRepository quotasRepository;

  QuotaBloc({
    this.quotasRepository,
  }) : super(QuotaInitial());

  @override
  Stream<QuotaState> mapEventToState(QuotaEvent event) async* {
    if (event is QuotaInitialized) {
      yield* handleProfileInitialized(event);
    }
  }

  Stream<QuotaState> handleProfileInitialized(QuotaInitialized event) async* {
    yield QuotaLoadInProgress();
    var result = await quotasRepository.getQuota();
    if (result == null) {
      yield QuotaLoadedFailure(
        error: 'Ha ocurrido un error inesperado.',
      );
    } else if (result.error != null) {
      yield QuotaLoadedFailure(
        error: result.error,
      );
    } else {
      yield QuotaLoadedSuccess(
        quota: result,
      );
    }
  }
}
