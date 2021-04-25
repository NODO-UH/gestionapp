// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'mail_quota_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MailQuotaEventTearOff {
  const _$MailQuotaEventTearOff();

  _$MailQuotaRequested quotaRequested() {
    return const _$MailQuotaRequested();
  }
}

/// @nodoc
const $MailQuotaEvent = _$MailQuotaEventTearOff();

/// @nodoc
mixin _$MailQuotaEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() quotaRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? quotaRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MailQuotaRequested value) quotaRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MailQuotaRequested value)? quotaRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MailQuotaEventCopyWith<$Res> {
  factory $MailQuotaEventCopyWith(
          MailQuotaEvent value, $Res Function(MailQuotaEvent) then) =
      _$MailQuotaEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MailQuotaEventCopyWithImpl<$Res>
    implements $MailQuotaEventCopyWith<$Res> {
  _$MailQuotaEventCopyWithImpl(this._value, this._then);

  final MailQuotaEvent _value;
  // ignore: unused_field
  final $Res Function(MailQuotaEvent) _then;
}

/// @nodoc
abstract class _$$MailQuotaRequestedCopyWith<$Res> {
  factory _$$MailQuotaRequestedCopyWith(_$MailQuotaRequested value,
          $Res Function(_$MailQuotaRequested) then) =
      __$$MailQuotaRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MailQuotaRequestedCopyWithImpl<$Res>
    extends _$MailQuotaEventCopyWithImpl<$Res>
    implements _$$MailQuotaRequestedCopyWith<$Res> {
  __$$MailQuotaRequestedCopyWithImpl(
      _$MailQuotaRequested _value, $Res Function(_$MailQuotaRequested) _then)
      : super(_value, (v) => _then(v as _$MailQuotaRequested));

  @override
  _$MailQuotaRequested get _value => super._value as _$MailQuotaRequested;
}

/// @nodoc

class _$_$MailQuotaRequested implements _$MailQuotaRequested {
  const _$_$MailQuotaRequested();

  @override
  String toString() {
    return 'MailQuotaEvent.quotaRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _$MailQuotaRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() quotaRequested,
  }) {
    return quotaRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? quotaRequested,
    required TResult orElse(),
  }) {
    if (quotaRequested != null) {
      return quotaRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MailQuotaRequested value) quotaRequested,
  }) {
    return quotaRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MailQuotaRequested value)? quotaRequested,
    required TResult orElse(),
  }) {
    if (quotaRequested != null) {
      return quotaRequested(this);
    }
    return orElse();
  }
}

abstract class _$MailQuotaRequested implements MailQuotaEvent {
  const factory _$MailQuotaRequested() = _$_$MailQuotaRequested;
}

/// @nodoc
class _$MailQuotaStateTearOff {
  const _$MailQuotaStateTearOff();

  _$MailQuotaInitial initial() {
    return const _$MailQuotaInitial();
  }

  _$LoadMailQuotaInProgress loadInProgress() {
    return const _$LoadMailQuotaInProgress();
  }

  _$LoadMailQuotaSuccess loadSuccess({required MailQuota quota}) {
    return _$LoadMailQuotaSuccess(
      quota: quota,
    );
  }

  _$LoadMailQuotaFailure loadFailure({required String error}) {
    return _$LoadMailQuotaFailure(
      error: error,
    );
  }
}

/// @nodoc
const $MailQuotaState = _$MailQuotaStateTearOff();

/// @nodoc
mixin _$MailQuotaState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(MailQuota quota) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(MailQuota quota)? loadSuccess,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MailQuotaInitial value) initial,
    required TResult Function(_$LoadMailQuotaInProgress value) loadInProgress,
    required TResult Function(_$LoadMailQuotaSuccess value) loadSuccess,
    required TResult Function(_$LoadMailQuotaFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MailQuotaInitial value)? initial,
    TResult Function(_$LoadMailQuotaInProgress value)? loadInProgress,
    TResult Function(_$LoadMailQuotaSuccess value)? loadSuccess,
    TResult Function(_$LoadMailQuotaFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MailQuotaStateCopyWith<$Res> {
  factory $MailQuotaStateCopyWith(
          MailQuotaState value, $Res Function(MailQuotaState) then) =
      _$MailQuotaStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MailQuotaStateCopyWithImpl<$Res>
    implements $MailQuotaStateCopyWith<$Res> {
  _$MailQuotaStateCopyWithImpl(this._value, this._then);

  final MailQuotaState _value;
  // ignore: unused_field
  final $Res Function(MailQuotaState) _then;
}

/// @nodoc
abstract class _$$MailQuotaInitialCopyWith<$Res> {
  factory _$$MailQuotaInitialCopyWith(
          _$MailQuotaInitial value, $Res Function(_$MailQuotaInitial) then) =
      __$$MailQuotaInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MailQuotaInitialCopyWithImpl<$Res>
    extends _$MailQuotaStateCopyWithImpl<$Res>
    implements _$$MailQuotaInitialCopyWith<$Res> {
  __$$MailQuotaInitialCopyWithImpl(
      _$MailQuotaInitial _value, $Res Function(_$MailQuotaInitial) _then)
      : super(_value, (v) => _then(v as _$MailQuotaInitial));

  @override
  _$MailQuotaInitial get _value => super._value as _$MailQuotaInitial;
}

/// @nodoc

class _$_$MailQuotaInitial implements _$MailQuotaInitial {
  const _$_$MailQuotaInitial();

  @override
  String toString() {
    return 'MailQuotaState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _$MailQuotaInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(MailQuota quota) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(MailQuota quota)? loadSuccess,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MailQuotaInitial value) initial,
    required TResult Function(_$LoadMailQuotaInProgress value) loadInProgress,
    required TResult Function(_$LoadMailQuotaSuccess value) loadSuccess,
    required TResult Function(_$LoadMailQuotaFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MailQuotaInitial value)? initial,
    TResult Function(_$LoadMailQuotaInProgress value)? loadInProgress,
    TResult Function(_$LoadMailQuotaSuccess value)? loadSuccess,
    TResult Function(_$LoadMailQuotaFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _$MailQuotaInitial implements MailQuotaState {
  const factory _$MailQuotaInitial() = _$_$MailQuotaInitial;
}

/// @nodoc
abstract class _$$LoadMailQuotaInProgressCopyWith<$Res> {
  factory _$$LoadMailQuotaInProgressCopyWith(_$LoadMailQuotaInProgress value,
          $Res Function(_$LoadMailQuotaInProgress) then) =
      __$$LoadMailQuotaInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMailQuotaInProgressCopyWithImpl<$Res>
    extends _$MailQuotaStateCopyWithImpl<$Res>
    implements _$$LoadMailQuotaInProgressCopyWith<$Res> {
  __$$LoadMailQuotaInProgressCopyWithImpl(_$LoadMailQuotaInProgress _value,
      $Res Function(_$LoadMailQuotaInProgress) _then)
      : super(_value, (v) => _then(v as _$LoadMailQuotaInProgress));

  @override
  _$LoadMailQuotaInProgress get _value =>
      super._value as _$LoadMailQuotaInProgress;
}

/// @nodoc

class _$_$LoadMailQuotaInProgress implements _$LoadMailQuotaInProgress {
  const _$_$LoadMailQuotaInProgress();

  @override
  String toString() {
    return 'MailQuotaState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _$LoadMailQuotaInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(MailQuota quota) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(MailQuota quota)? loadSuccess,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MailQuotaInitial value) initial,
    required TResult Function(_$LoadMailQuotaInProgress value) loadInProgress,
    required TResult Function(_$LoadMailQuotaSuccess value) loadSuccess,
    required TResult Function(_$LoadMailQuotaFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MailQuotaInitial value)? initial,
    TResult Function(_$LoadMailQuotaInProgress value)? loadInProgress,
    TResult Function(_$LoadMailQuotaSuccess value)? loadSuccess,
    TResult Function(_$LoadMailQuotaFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _$LoadMailQuotaInProgress implements MailQuotaState {
  const factory _$LoadMailQuotaInProgress() = _$_$LoadMailQuotaInProgress;
}

/// @nodoc
abstract class _$$LoadMailQuotaSuccessCopyWith<$Res> {
  factory _$$LoadMailQuotaSuccessCopyWith(_$LoadMailQuotaSuccess value,
          $Res Function(_$LoadMailQuotaSuccess) then) =
      __$$LoadMailQuotaSuccessCopyWithImpl<$Res>;
  $Res call({MailQuota quota});
}

/// @nodoc
class __$$LoadMailQuotaSuccessCopyWithImpl<$Res>
    extends _$MailQuotaStateCopyWithImpl<$Res>
    implements _$$LoadMailQuotaSuccessCopyWith<$Res> {
  __$$LoadMailQuotaSuccessCopyWithImpl(_$LoadMailQuotaSuccess _value,
      $Res Function(_$LoadMailQuotaSuccess) _then)
      : super(_value, (v) => _then(v as _$LoadMailQuotaSuccess));

  @override
  _$LoadMailQuotaSuccess get _value => super._value as _$LoadMailQuotaSuccess;

  @override
  $Res call({
    Object? quota = freezed,
  }) {
    return _then(_$LoadMailQuotaSuccess(
      quota: quota == freezed
          ? _value.quota
          : quota // ignore: cast_nullable_to_non_nullable
              as MailQuota,
    ));
  }
}

/// @nodoc

class _$_$LoadMailQuotaSuccess implements _$LoadMailQuotaSuccess {
  const _$_$LoadMailQuotaSuccess({required this.quota});

  @override
  final MailQuota quota;

  @override
  String toString() {
    return 'MailQuotaState.loadSuccess(quota: $quota)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$LoadMailQuotaSuccess &&
            (identical(other.quota, quota) ||
                const DeepCollectionEquality().equals(other.quota, quota)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(quota);

  @JsonKey(ignore: true)
  @override
  _$$LoadMailQuotaSuccessCopyWith<_$LoadMailQuotaSuccess> get copyWith =>
      __$$LoadMailQuotaSuccessCopyWithImpl<_$LoadMailQuotaSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(MailQuota quota) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadSuccess(quota);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(MailQuota quota)? loadSuccess,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(quota);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MailQuotaInitial value) initial,
    required TResult Function(_$LoadMailQuotaInProgress value) loadInProgress,
    required TResult Function(_$LoadMailQuotaSuccess value) loadSuccess,
    required TResult Function(_$LoadMailQuotaFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MailQuotaInitial value)? initial,
    TResult Function(_$LoadMailQuotaInProgress value)? loadInProgress,
    TResult Function(_$LoadMailQuotaSuccess value)? loadSuccess,
    TResult Function(_$LoadMailQuotaFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _$LoadMailQuotaSuccess implements MailQuotaState {
  const factory _$LoadMailQuotaSuccess({required MailQuota quota}) =
      _$_$LoadMailQuotaSuccess;

  MailQuota get quota => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LoadMailQuotaSuccessCopyWith<_$LoadMailQuotaSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMailQuotaFailureCopyWith<$Res> {
  factory _$$LoadMailQuotaFailureCopyWith(_$LoadMailQuotaFailure value,
          $Res Function(_$LoadMailQuotaFailure) then) =
      __$$LoadMailQuotaFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$LoadMailQuotaFailureCopyWithImpl<$Res>
    extends _$MailQuotaStateCopyWithImpl<$Res>
    implements _$$LoadMailQuotaFailureCopyWith<$Res> {
  __$$LoadMailQuotaFailureCopyWithImpl(_$LoadMailQuotaFailure _value,
      $Res Function(_$LoadMailQuotaFailure) _then)
      : super(_value, (v) => _then(v as _$LoadMailQuotaFailure));

  @override
  _$LoadMailQuotaFailure get _value => super._value as _$LoadMailQuotaFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$LoadMailQuotaFailure(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$LoadMailQuotaFailure implements _$LoadMailQuotaFailure {
  const _$_$LoadMailQuotaFailure({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'MailQuotaState.loadFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$LoadMailQuotaFailure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$$LoadMailQuotaFailureCopyWith<_$LoadMailQuotaFailure> get copyWith =>
      __$$LoadMailQuotaFailureCopyWithImpl<_$LoadMailQuotaFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(MailQuota quota) loadSuccess,
    required TResult Function(String error) loadFailure,
  }) {
    return loadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(MailQuota quota)? loadSuccess,
    TResult Function(String error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MailQuotaInitial value) initial,
    required TResult Function(_$LoadMailQuotaInProgress value) loadInProgress,
    required TResult Function(_$LoadMailQuotaSuccess value) loadSuccess,
    required TResult Function(_$LoadMailQuotaFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MailQuotaInitial value)? initial,
    TResult Function(_$LoadMailQuotaInProgress value)? loadInProgress,
    TResult Function(_$LoadMailQuotaSuccess value)? loadSuccess,
    TResult Function(_$LoadMailQuotaFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _$LoadMailQuotaFailure implements MailQuotaState {
  const factory _$LoadMailQuotaFailure({required String error}) =
      _$_$LoadMailQuotaFailure;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LoadMailQuotaFailureCopyWith<_$LoadMailQuotaFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
