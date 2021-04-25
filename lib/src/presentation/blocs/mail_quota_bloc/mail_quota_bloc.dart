import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestionuh/src/data/models/models.dart';
import 'package:gestionuh/src/data/repositories/repositories.dart';
import 'package:gestionuh/src/utils/constants/constants.dart';

part 'mail_quota_event.dart';
part 'mail_quota_state.dart';
part 'mail_quota_bloc.freezed.dart';

class MailQuotaBloc extends Bloc<MailQuotaEvent, MailQuotaState> {
  final MailQuotasRepository mailQuotasRepository;

  MailQuotaBloc({
    required this.mailQuotasRepository,
  }) : super(const MailQuotaState.initial());

  @override
  Stream<MailQuotaState> mapEventToState(MailQuotaEvent event) async* {
    yield* event.map(
      quotaRequested: quotaRequestedHandler,
    );
  }

  Stream<MailQuotaState> quotaRequestedHandler(
      _$MailQuotaRequested event) async* {
    yield const MailQuotaState.loadInProgress();
    final result = await mailQuotasRepository.getQuota();
    if (result == null || result.error != null) {
      yield MailQuotaState.loadFailure(
        error: result?.error ?? Errors.DefaultError,
      );
    } else {
      yield MailQuotaState.loadSuccess(
        quota: result,
      );
    }
  }
}
