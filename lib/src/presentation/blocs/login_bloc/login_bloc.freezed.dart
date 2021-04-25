// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginEventTearOff {
  const _$LoginEventTearOff();

  _$LoginAttempted loginAttempted(
      {required String userName,
      required String password,
      required bool rememberMe}) {
    return _$LoginAttempted(
      userName: userName,
      password: password,
      rememberMe: rememberMe,
    );
  }
}

/// @nodoc
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  String get userName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get rememberMe => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password, bool rememberMe)
        loginAttempted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password, bool rememberMe)?
        loginAttempted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$LoginAttempted value) loginAttempted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$LoginAttempted value)? loginAttempted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginEventCopyWith<LoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
  $Res call({String userName, String password, bool rememberMe});
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;

  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
    Object? rememberMe = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      rememberMe: rememberMe == freezed
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$LoginAttemptedCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$$LoginAttemptedCopyWith(
          _$LoginAttempted value, $Res Function(_$LoginAttempted) then) =
      __$$LoginAttemptedCopyWithImpl<$Res>;
  @override
  $Res call({String userName, String password, bool rememberMe});
}

/// @nodoc
class __$$LoginAttemptedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$LoginAttemptedCopyWith<$Res> {
  __$$LoginAttemptedCopyWithImpl(
      _$LoginAttempted _value, $Res Function(_$LoginAttempted) _then)
      : super(_value, (v) => _then(v as _$LoginAttempted));

  @override
  _$LoginAttempted get _value => super._value as _$LoginAttempted;

  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
    Object? rememberMe = freezed,
  }) {
    return _then(_$LoginAttempted(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      rememberMe: rememberMe == freezed
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_$LoginAttempted implements _$LoginAttempted {
  const _$_$LoginAttempted(
      {required this.userName,
      required this.password,
      required this.rememberMe});

  @override
  final String userName;
  @override
  final String password;
  @override
  final bool rememberMe;

  @override
  String toString() {
    return 'LoginEvent.loginAttempted(userName: $userName, password: $password, rememberMe: $rememberMe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$LoginAttempted &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.rememberMe, rememberMe) ||
                const DeepCollectionEquality()
                    .equals(other.rememberMe, rememberMe)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(rememberMe);

  @JsonKey(ignore: true)
  @override
  _$$LoginAttemptedCopyWith<_$LoginAttempted> get copyWith =>
      __$$LoginAttemptedCopyWithImpl<_$LoginAttempted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password, bool rememberMe)
        loginAttempted,
  }) {
    return loginAttempted(userName, password, rememberMe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password, bool rememberMe)?
        loginAttempted,
    required TResult orElse(),
  }) {
    if (loginAttempted != null) {
      return loginAttempted(userName, password, rememberMe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$LoginAttempted value) loginAttempted,
  }) {
    return loginAttempted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$LoginAttempted value)? loginAttempted,
    required TResult orElse(),
  }) {
    if (loginAttempted != null) {
      return loginAttempted(this);
    }
    return orElse();
  }
}

abstract class _$LoginAttempted implements LoginEvent {
  const factory _$LoginAttempted(
      {required String userName,
      required String password,
      required bool rememberMe}) = _$_$LoginAttempted;

  @override
  String get userName => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  bool get rememberMe => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$LoginAttemptedCopyWith<_$LoginAttempted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  _$LoginInitial initial() {
    return const _$LoginInitial();
  }

  _$LoginAttemptInProgress inProgress() {
    return const _$LoginAttemptInProgress();
  }

  _$LoginAttemptSuccess success() {
    return const _$LoginAttemptSuccess();
  }

  _$LoginAttemptFailure failure({required String error}) {
    return _$LoginAttemptFailure(
      error: error,
    );
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
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
    required TResult Function(_$LoginInitial value) initial,
    required TResult Function(_$LoginAttemptInProgress value) inProgress,
    required TResult Function(_$LoginAttemptSuccess value) success,
    required TResult Function(_$LoginAttemptFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$LoginInitial value)? initial,
    TResult Function(_$LoginAttemptInProgress value)? inProgress,
    TResult Function(_$LoginAttemptSuccess value)? success,
    TResult Function(_$LoginAttemptFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class _$$LoginInitialCopyWith<$Res> {
  factory _$$LoginInitialCopyWith(
          _$LoginInitial value, $Res Function(_$LoginInitial) then) =
      __$$LoginInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginInitialCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$LoginInitialCopyWith<$Res> {
  __$$LoginInitialCopyWithImpl(
      _$LoginInitial _value, $Res Function(_$LoginInitial) _then)
      : super(_value, (v) => _then(v as _$LoginInitial));

  @override
  _$LoginInitial get _value => super._value as _$LoginInitial;
}

/// @nodoc

class _$_$LoginInitial implements _$LoginInitial {
  const _$_$LoginInitial();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _$LoginInitial);
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
    required TResult Function(_$LoginInitial value) initial,
    required TResult Function(_$LoginAttemptInProgress value) inProgress,
    required TResult Function(_$LoginAttemptSuccess value) success,
    required TResult Function(_$LoginAttemptFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$LoginInitial value)? initial,
    TResult Function(_$LoginAttemptInProgress value)? inProgress,
    TResult Function(_$LoginAttemptSuccess value)? success,
    TResult Function(_$LoginAttemptFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _$LoginInitial implements LoginState {
  const factory _$LoginInitial() = _$_$LoginInitial;
}

/// @nodoc
abstract class _$$LoginAttemptInProgressCopyWith<$Res> {
  factory _$$LoginAttemptInProgressCopyWith(_$LoginAttemptInProgress value,
          $Res Function(_$LoginAttemptInProgress) then) =
      __$$LoginAttemptInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginAttemptInProgressCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$LoginAttemptInProgressCopyWith<$Res> {
  __$$LoginAttemptInProgressCopyWithImpl(_$LoginAttemptInProgress _value,
      $Res Function(_$LoginAttemptInProgress) _then)
      : super(_value, (v) => _then(v as _$LoginAttemptInProgress));

  @override
  _$LoginAttemptInProgress get _value =>
      super._value as _$LoginAttemptInProgress;
}

/// @nodoc

class _$_$LoginAttemptInProgress implements _$LoginAttemptInProgress {
  const _$_$LoginAttemptInProgress();

  @override
  String toString() {
    return 'LoginState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _$LoginAttemptInProgress);
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
    required TResult Function(_$LoginInitial value) initial,
    required TResult Function(_$LoginAttemptInProgress value) inProgress,
    required TResult Function(_$LoginAttemptSuccess value) success,
    required TResult Function(_$LoginAttemptFailure value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$LoginInitial value)? initial,
    TResult Function(_$LoginAttemptInProgress value)? inProgress,
    TResult Function(_$LoginAttemptSuccess value)? success,
    TResult Function(_$LoginAttemptFailure value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _$LoginAttemptInProgress implements LoginState {
  const factory _$LoginAttemptInProgress() = _$_$LoginAttemptInProgress;
}

/// @nodoc
abstract class _$$LoginAttemptSuccessCopyWith<$Res> {
  factory _$$LoginAttemptSuccessCopyWith(_$LoginAttemptSuccess value,
          $Res Function(_$LoginAttemptSuccess) then) =
      __$$LoginAttemptSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginAttemptSuccessCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$LoginAttemptSuccessCopyWith<$Res> {
  __$$LoginAttemptSuccessCopyWithImpl(
      _$LoginAttemptSuccess _value, $Res Function(_$LoginAttemptSuccess) _then)
      : super(_value, (v) => _then(v as _$LoginAttemptSuccess));

  @override
  _$LoginAttemptSuccess get _value => super._value as _$LoginAttemptSuccess;
}

/// @nodoc

class _$_$LoginAttemptSuccess implements _$LoginAttemptSuccess {
  const _$_$LoginAttemptSuccess();

  @override
  String toString() {
    return 'LoginState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _$LoginAttemptSuccess);
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
    required TResult Function(_$LoginInitial value) initial,
    required TResult Function(_$LoginAttemptInProgress value) inProgress,
    required TResult Function(_$LoginAttemptSuccess value) success,
    required TResult Function(_$LoginAttemptFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$LoginInitial value)? initial,
    TResult Function(_$LoginAttemptInProgress value)? inProgress,
    TResult Function(_$LoginAttemptSuccess value)? success,
    TResult Function(_$LoginAttemptFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _$LoginAttemptSuccess implements LoginState {
  const factory _$LoginAttemptSuccess() = _$_$LoginAttemptSuccess;
}

/// @nodoc
abstract class _$$LoginAttemptFailureCopyWith<$Res> {
  factory _$$LoginAttemptFailureCopyWith(_$LoginAttemptFailure value,
          $Res Function(_$LoginAttemptFailure) then) =
      __$$LoginAttemptFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$LoginAttemptFailureCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$LoginAttemptFailureCopyWith<$Res> {
  __$$LoginAttemptFailureCopyWithImpl(
      _$LoginAttemptFailure _value, $Res Function(_$LoginAttemptFailure) _then)
      : super(_value, (v) => _then(v as _$LoginAttemptFailure));

  @override
  _$LoginAttemptFailure get _value => super._value as _$LoginAttemptFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$LoginAttemptFailure(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$LoginAttemptFailure implements _$LoginAttemptFailure {
  const _$_$LoginAttemptFailure({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'LoginState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$LoginAttemptFailure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$$LoginAttemptFailureCopyWith<_$LoginAttemptFailure> get copyWith =>
      __$$LoginAttemptFailureCopyWithImpl<_$LoginAttemptFailure>(
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
    required TResult Function(_$LoginInitial value) initial,
    required TResult Function(_$LoginAttemptInProgress value) inProgress,
    required TResult Function(_$LoginAttemptSuccess value) success,
    required TResult Function(_$LoginAttemptFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$LoginInitial value)? initial,
    TResult Function(_$LoginAttemptInProgress value)? inProgress,
    TResult Function(_$LoginAttemptSuccess value)? success,
    TResult Function(_$LoginAttemptFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _$LoginAttemptFailure implements LoginState {
  const factory _$LoginAttemptFailure({required String error}) =
      _$_$LoginAttemptFailure;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LoginAttemptFailureCopyWith<_$LoginAttemptFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
