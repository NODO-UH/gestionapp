// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'resetpassword_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResetPasswordEventTearOff {
  const _$ResetPasswordEventTearOff();

  _ResetPasswordAttempted resetPasswordAttempted(
      {required String currentPassword,
      required String passwordFirst,
      required String passwordSecond}) {
    return _ResetPasswordAttempted(
      currentPassword: currentPassword,
      passwordFirst: passwordFirst,
      passwordSecond: passwordSecond,
    );
  }
}

/// @nodoc
const $ResetPasswordEvent = _$ResetPasswordEventTearOff();

/// @nodoc
mixin _$ResetPasswordEvent {
  String get currentPassword => throw _privateConstructorUsedError;
  String get passwordFirst => throw _privateConstructorUsedError;
  String get passwordSecond => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String currentPassword, String passwordFirst, String passwordSecond)
        resetPasswordAttempted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currentPassword, String passwordFirst,
            String passwordSecond)?
        resetPasswordAttempted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetPasswordAttempted value)
        resetPasswordAttempted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetPasswordAttempted value)? resetPasswordAttempted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResetPasswordEventCopyWith<ResetPasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordEventCopyWith<$Res> {
  factory $ResetPasswordEventCopyWith(
          ResetPasswordEvent value, $Res Function(ResetPasswordEvent) then) =
      _$ResetPasswordEventCopyWithImpl<$Res>;
  $Res call(
      {String currentPassword, String passwordFirst, String passwordSecond});
}

/// @nodoc
class _$ResetPasswordEventCopyWithImpl<$Res>
    implements $ResetPasswordEventCopyWith<$Res> {
  _$ResetPasswordEventCopyWithImpl(this._value, this._then);

  final ResetPasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ResetPasswordEvent) _then;

  @override
  $Res call({
    Object? currentPassword = freezed,
    Object? passwordFirst = freezed,
    Object? passwordSecond = freezed,
  }) {
    return _then(_value.copyWith(
      currentPassword: currentPassword == freezed
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String,
      passwordFirst: passwordFirst == freezed
          ? _value.passwordFirst
          : passwordFirst // ignore: cast_nullable_to_non_nullable
              as String,
      passwordSecond: passwordSecond == freezed
          ? _value.passwordSecond
          : passwordSecond // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ResetPasswordAttemptedCopyWith<$Res>
    implements $ResetPasswordEventCopyWith<$Res> {
  factory _$ResetPasswordAttemptedCopyWith(_ResetPasswordAttempted value,
          $Res Function(_ResetPasswordAttempted) then) =
      __$ResetPasswordAttemptedCopyWithImpl<$Res>;
  @override
  $Res call(
      {String currentPassword, String passwordFirst, String passwordSecond});
}

/// @nodoc
class __$ResetPasswordAttemptedCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res>
    implements _$ResetPasswordAttemptedCopyWith<$Res> {
  __$ResetPasswordAttemptedCopyWithImpl(_ResetPasswordAttempted _value,
      $Res Function(_ResetPasswordAttempted) _then)
      : super(_value, (v) => _then(v as _ResetPasswordAttempted));

  @override
  _ResetPasswordAttempted get _value => super._value as _ResetPasswordAttempted;

  @override
  $Res call({
    Object? currentPassword = freezed,
    Object? passwordFirst = freezed,
    Object? passwordSecond = freezed,
  }) {
    return _then(_ResetPasswordAttempted(
      currentPassword: currentPassword == freezed
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String,
      passwordFirst: passwordFirst == freezed
          ? _value.passwordFirst
          : passwordFirst // ignore: cast_nullable_to_non_nullable
              as String,
      passwordSecond: passwordSecond == freezed
          ? _value.passwordSecond
          : passwordSecond // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResetPasswordAttempted implements _ResetPasswordAttempted {
  const _$_ResetPasswordAttempted(
      {required this.currentPassword,
      required this.passwordFirst,
      required this.passwordSecond});

  @override
  final String currentPassword;
  @override
  final String passwordFirst;
  @override
  final String passwordSecond;

  @override
  String toString() {
    return 'ResetPasswordEvent.resetPasswordAttempted(currentPassword: $currentPassword, passwordFirst: $passwordFirst, passwordSecond: $passwordSecond)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResetPasswordAttempted &&
            (identical(other.currentPassword, currentPassword) ||
                const DeepCollectionEquality()
                    .equals(other.currentPassword, currentPassword)) &&
            (identical(other.passwordFirst, passwordFirst) ||
                const DeepCollectionEquality()
                    .equals(other.passwordFirst, passwordFirst)) &&
            (identical(other.passwordSecond, passwordSecond) ||
                const DeepCollectionEquality()
                    .equals(other.passwordSecond, passwordSecond)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentPassword) ^
      const DeepCollectionEquality().hash(passwordFirst) ^
      const DeepCollectionEquality().hash(passwordSecond);

  @JsonKey(ignore: true)
  @override
  _$ResetPasswordAttemptedCopyWith<_ResetPasswordAttempted> get copyWith =>
      __$ResetPasswordAttemptedCopyWithImpl<_ResetPasswordAttempted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String currentPassword, String passwordFirst, String passwordSecond)
        resetPasswordAttempted,
  }) {
    return resetPasswordAttempted(
        currentPassword, passwordFirst, passwordSecond);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currentPassword, String passwordFirst,
            String passwordSecond)?
        resetPasswordAttempted,
    required TResult orElse(),
  }) {
    if (resetPasswordAttempted != null) {
      return resetPasswordAttempted(
          currentPassword, passwordFirst, passwordSecond);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetPasswordAttempted value)
        resetPasswordAttempted,
  }) {
    return resetPasswordAttempted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetPasswordAttempted value)? resetPasswordAttempted,
    required TResult orElse(),
  }) {
    if (resetPasswordAttempted != null) {
      return resetPasswordAttempted(this);
    }
    return orElse();
  }
}

abstract class _ResetPasswordAttempted implements ResetPasswordEvent {
  const factory _ResetPasswordAttempted(
      {required String currentPassword,
      required String passwordFirst,
      required String passwordSecond}) = _$_ResetPasswordAttempted;

  @override
  String get currentPassword => throw _privateConstructorUsedError;
  @override
  String get passwordFirst => throw _privateConstructorUsedError;
  @override
  String get passwordSecond => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResetPasswordAttemptedCopyWith<_ResetPasswordAttempted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ResetPasswordStateTearOff {
  const _$ResetPasswordStateTearOff();

  _ResetPasswordInitialState initial() {
    return const _ResetPasswordInitialState();
  }

  _ResetPasswordInProgress inProgress() {
    return const _ResetPasswordInProgress();
  }

  _ResetPasswordSuccess success() {
    return const _ResetPasswordSuccess();
  }

  _ResetPasswordFailure failure({required String error}) {
    return _ResetPasswordFailure(
      error: error,
    );
  }
}

/// @nodoc
const $ResetPasswordState = _$ResetPasswordStateTearOff();

/// @nodoc
mixin _$ResetPasswordState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetPasswordInitialState value) initial,
    required TResult Function(_ResetPasswordInProgress value) inProgress,
    required TResult Function(_ResetPasswordSuccess value) success,
    required TResult Function(_ResetPasswordFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetPasswordInitialState value)? initial,
    TResult Function(_ResetPasswordInProgress value)? inProgress,
    TResult Function(_ResetPasswordSuccess value)? success,
    TResult Function(_ResetPasswordFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordStateCopyWith<$Res> {
  factory $ResetPasswordStateCopyWith(
          ResetPasswordState value, $Res Function(ResetPasswordState) then) =
      _$ResetPasswordStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetPasswordStateCopyWithImpl<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  _$ResetPasswordStateCopyWithImpl(this._value, this._then);

  final ResetPasswordState _value;
  // ignore: unused_field
  final $Res Function(ResetPasswordState) _then;
}

/// @nodoc
abstract class _$ResetPasswordInitialStateCopyWith<$Res> {
  factory _$ResetPasswordInitialStateCopyWith(_ResetPasswordInitialState value,
          $Res Function(_ResetPasswordInitialState) then) =
      __$ResetPasswordInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetPasswordInitialStateCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res>
    implements _$ResetPasswordInitialStateCopyWith<$Res> {
  __$ResetPasswordInitialStateCopyWithImpl(_ResetPasswordInitialState _value,
      $Res Function(_ResetPasswordInitialState) _then)
      : super(_value, (v) => _then(v as _ResetPasswordInitialState));

  @override
  _ResetPasswordInitialState get _value =>
      super._value as _ResetPasswordInitialState;
}

/// @nodoc

class _$_ResetPasswordInitialState implements _ResetPasswordInitialState {
  const _$_ResetPasswordInitialState();

  @override
  String toString() {
    return 'ResetPasswordState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ResetPasswordInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function(String error)? failure,
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
    required TResult Function(_ResetPasswordInitialState value) initial,
    required TResult Function(_ResetPasswordInProgress value) inProgress,
    required TResult Function(_ResetPasswordSuccess value) success,
    required TResult Function(_ResetPasswordFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetPasswordInitialState value)? initial,
    TResult Function(_ResetPasswordInProgress value)? inProgress,
    TResult Function(_ResetPasswordSuccess value)? success,
    TResult Function(_ResetPasswordFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ResetPasswordInitialState implements ResetPasswordState {
  const factory _ResetPasswordInitialState() = _$_ResetPasswordInitialState;
}

/// @nodoc
abstract class _$ResetPasswordInProgressCopyWith<$Res> {
  factory _$ResetPasswordInProgressCopyWith(_ResetPasswordInProgress value,
          $Res Function(_ResetPasswordInProgress) then) =
      __$ResetPasswordInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetPasswordInProgressCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res>
    implements _$ResetPasswordInProgressCopyWith<$Res> {
  __$ResetPasswordInProgressCopyWithImpl(_ResetPasswordInProgress _value,
      $Res Function(_ResetPasswordInProgress) _then)
      : super(_value, (v) => _then(v as _ResetPasswordInProgress));

  @override
  _ResetPasswordInProgress get _value =>
      super._value as _ResetPasswordInProgress;
}

/// @nodoc

class _$_ResetPasswordInProgress implements _ResetPasswordInProgress {
  const _$_ResetPasswordInProgress();

  @override
  String toString() {
    return 'ResetPasswordState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ResetPasswordInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetPasswordInitialState value) initial,
    required TResult Function(_ResetPasswordInProgress value) inProgress,
    required TResult Function(_ResetPasswordSuccess value) success,
    required TResult Function(_ResetPasswordFailure value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetPasswordInitialState value)? initial,
    TResult Function(_ResetPasswordInProgress value)? inProgress,
    TResult Function(_ResetPasswordSuccess value)? success,
    TResult Function(_ResetPasswordFailure value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _ResetPasswordInProgress implements ResetPasswordState {
  const factory _ResetPasswordInProgress() = _$_ResetPasswordInProgress;
}

/// @nodoc
abstract class _$ResetPasswordSuccessCopyWith<$Res> {
  factory _$ResetPasswordSuccessCopyWith(_ResetPasswordSuccess value,
          $Res Function(_ResetPasswordSuccess) then) =
      __$ResetPasswordSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetPasswordSuccessCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res>
    implements _$ResetPasswordSuccessCopyWith<$Res> {
  __$ResetPasswordSuccessCopyWithImpl(
      _ResetPasswordSuccess _value, $Res Function(_ResetPasswordSuccess) _then)
      : super(_value, (v) => _then(v as _ResetPasswordSuccess));

  @override
  _ResetPasswordSuccess get _value => super._value as _ResetPasswordSuccess;
}

/// @nodoc

class _$_ResetPasswordSuccess implements _ResetPasswordSuccess {
  const _$_ResetPasswordSuccess();

  @override
  String toString() {
    return 'ResetPasswordState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ResetPasswordSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetPasswordInitialState value) initial,
    required TResult Function(_ResetPasswordInProgress value) inProgress,
    required TResult Function(_ResetPasswordSuccess value) success,
    required TResult Function(_ResetPasswordFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetPasswordInitialState value)? initial,
    TResult Function(_ResetPasswordInProgress value)? inProgress,
    TResult Function(_ResetPasswordSuccess value)? success,
    TResult Function(_ResetPasswordFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ResetPasswordSuccess implements ResetPasswordState {
  const factory _ResetPasswordSuccess() = _$_ResetPasswordSuccess;
}

/// @nodoc
abstract class _$ResetPasswordFailureCopyWith<$Res> {
  factory _$ResetPasswordFailureCopyWith(_ResetPasswordFailure value,
          $Res Function(_ResetPasswordFailure) then) =
      __$ResetPasswordFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$ResetPasswordFailureCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res>
    implements _$ResetPasswordFailureCopyWith<$Res> {
  __$ResetPasswordFailureCopyWithImpl(
      _ResetPasswordFailure _value, $Res Function(_ResetPasswordFailure) _then)
      : super(_value, (v) => _then(v as _ResetPasswordFailure));

  @override
  _ResetPasswordFailure get _value => super._value as _ResetPasswordFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_ResetPasswordFailure(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResetPasswordFailure implements _ResetPasswordFailure {
  const _$_ResetPasswordFailure({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ResetPasswordState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResetPasswordFailure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$ResetPasswordFailureCopyWith<_ResetPasswordFailure> get copyWith =>
      __$ResetPasswordFailureCopyWithImpl<_ResetPasswordFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetPasswordInitialState value) initial,
    required TResult Function(_ResetPasswordInProgress value) inProgress,
    required TResult Function(_ResetPasswordSuccess value) success,
    required TResult Function(_ResetPasswordFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetPasswordInitialState value)? initial,
    TResult Function(_ResetPasswordInProgress value)? inProgress,
    TResult Function(_ResetPasswordSuccess value)? success,
    TResult Function(_ResetPasswordFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _ResetPasswordFailure implements ResetPasswordState {
  const factory _ResetPasswordFailure({required String error}) =
      _$_ResetPasswordFailure;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ResetPasswordFailureCopyWith<_ResetPasswordFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
