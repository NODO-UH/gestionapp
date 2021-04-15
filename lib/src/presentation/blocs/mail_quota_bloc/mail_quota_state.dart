part of 'mail_quota_bloc.dart';

abstract class MailQuotaState {}

class MailQuotaInitial extends MailQuotaState {}

class MailQuotaLoadInProgress extends MailQuotaState {}

class MailQuotaLoadedSuccess extends MailQuotaState {
  final MailQuota? quota;

  MailQuotaLoadedSuccess({
    this.quota,
  });
}

class MailQuotaLoadedFailure extends MailQuotaState {
  final String? error;

  MailQuotaLoadedFailure({
    this.error,
  });
}
