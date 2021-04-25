part of 'mail_quota_bloc.dart';

@freezed
abstract class MailQuotaEvent with _$MailQuotaEvent {
  const factory MailQuotaEvent.quotaRequested() = _$MailQuotaRequested;
}
