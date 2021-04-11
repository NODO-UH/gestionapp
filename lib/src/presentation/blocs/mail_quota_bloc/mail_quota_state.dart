part of 'mail_quota_bloc.dart';

class MailQuotaState extends Equatable {
  @override
  List<Object> get props => [];
}

class MailQuotaInitial extends MailQuotaState {}

class MailQuotaLoadInProgress extends MailQuotaState {}

class MailQuotaLoadedSuccess extends MailQuotaState {
  final MailQuota quota;

  MailQuotaLoadedSuccess({
    this.quota,
  });

  @override
  List<Object> get props => [quota];
}

class MailQuotaLoadedFailure extends MailQuotaState {
  final String error;

  MailQuotaLoadedFailure({
    this.error,
  });

  @override
  List<Object> get props => [error];
}
