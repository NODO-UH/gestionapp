import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestionuh/src/data/models/models.dart';
import 'package:gestionuh/src/data/repositories/repositories.dart';
import 'package:gestionuh/src/utils/constants/constants.dart';

part 'mail_quota_event.dart';
part 'mail_quota_state.dart';

class MailQuotaBloc extends Bloc<MailQuotaEvent, MailQuotaState> {
  final MailQuotasRepository mailQuotasRepository;

  MailQuotaBloc({
    required this.mailQuotasRepository,
  }) : super(MailQuotaInitial());

  @override
  Stream<MailQuotaState> mapEventToState(MailQuotaEvent event) async* {
    if (event is MailQuotaInitialized) {
      yield* handleProfileInitialized(event);
    }
  }

  Stream<MailQuotaState> handleProfileInitialized(
      MailQuotaInitialized event) async* {
    yield MailQuotaLoadInProgress();
    final result = await mailQuotasRepository.getQuota();
    if (result == null) {
      yield MailQuotaLoadedFailure(
        error: Errors.DefaultError,
      );
    } else if (result.error != null) {
      yield MailQuotaLoadedFailure(
        error: result.error,
      );
    } else {
      yield MailQuotaLoadedSuccess(
        quota: result,
      );
    }
  }
}
