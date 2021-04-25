part of 'quota_bloc.dart';

@freezed
class QuotaState with _$QuotaState {
  const factory QuotaState.loading() = _Loading;
  const factory QuotaState.success(Quota quota) = _Success;
  const factory QuotaState.error(String error) = _Error;
}
