import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestionuh/src/data/models/models.dart';
import 'package:gestionuh/src/data/repositories/repositories.dart';
import 'package:gestionuh/src/utils/constants/constants.dart';

part 'quota_bloc.freezed.dart';
part 'quota_event.dart';
part 'quota_state.dart';

class QuotaBloc extends Bloc<QuotaEvent, QuotaState> {
  final QuotasRepository quotasRepository;

  QuotaBloc({
    required this.quotasRepository,
  }) : super(const QuotaState.loading());

  @override
  Stream<QuotaState> mapEventToState(QuotaEvent event) async* {
    yield* event.when(
      load: handleProfileInitialized,
    );
  }

  Stream<QuotaState> handleProfileInitialized() async* {
    yield const QuotaState.loading();
    final result = await quotasRepository.getQuota();
    if (result == null) {
      yield const QuotaState.error(Errors.DefaultError);
    } else if (result.error != null) {
      yield QuotaState.error(result.error!);
    } else {
      yield QuotaState.success(result);
    }
  }
}
