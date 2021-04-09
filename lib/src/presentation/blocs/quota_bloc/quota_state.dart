part of 'quota_bloc.dart';

class QuotaState extends Equatable {
  @override
  List<Object> get props => [];
}

class QuotaInitial extends QuotaState {}

class QuotaLoadInProgress extends QuotaState {}

class QuotaLoadedSuccess extends QuotaState {
  final Quota quota;

  QuotaLoadedSuccess({
    this.quota,
  });

  @override
  List<Object> get props => [quota];
}

class QuotaLoadedFailure extends QuotaState {
  final String error;

  QuotaLoadedFailure({
    this.error,
  });

  @override
  List<Object> get props => [error];
}
