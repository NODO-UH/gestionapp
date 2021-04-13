part of 'quota_bloc.dart';

abstract class QuotaState {}

class QuotaInitial extends QuotaState {}

class QuotaLoadInProgress extends QuotaState {}

class QuotaLoadedSuccess extends QuotaState {
  final Quota quota;

  QuotaLoadedSuccess({
    required this.quota,
  });
}

class QuotaLoadedFailure extends QuotaState {
  final String error;

  QuotaLoadedFailure({
    required this.error,
  });
}
