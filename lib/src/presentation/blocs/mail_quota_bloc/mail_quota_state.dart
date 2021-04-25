part of 'mail_quota_bloc.dart';

@freezed
class MailQuotaState with _$MailQuotaState {
  const factory MailQuotaState.initial() = _$MailQuotaInitial;
  const factory MailQuotaState.loadInProgress() = _$LoadMailQuotaInProgress;
  const factory MailQuotaState.loadSuccess({required MailQuota quota}) =
      _$LoadMailQuotaSuccess;
  const factory MailQuotaState.loadFailure({required String error}) =
      _$LoadMailQuotaFailure;
}
