// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterEventTearOff {
  const _$RegisterEventTearOff();

  _QuestionsRequestedRegister questionsRequested() {
    return const _QuestionsRequestedRegister();
  }

  _FormSubmittedRegister formSubmitted(
      {required List<String> answers,
      required String ci,
      required String passwordFirst,
      required String passwordSecond,
      required List<String> questions}) {
    return _FormSubmittedRegister(
      answers: answers,
      ci: ci,
      passwordFirst: passwordFirst,
      passwordSecond: passwordSecond,
      questions: questions,
    );
  }
}

/// @nodoc
const $RegisterEvent = _$RegisterEventTearOff();

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() questionsRequested,
    required TResult Function(List<String> answers, String ci,
            String passwordFirst, String passwordSecond, List<String> questions)
        formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? questionsRequested,
    TResult Function(List<String> answers, String ci, String passwordFirst,
            String passwordSecond, List<String> questions)?
        formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuestionsRequestedRegister value)
        questionsRequested,
    required TResult Function(_FormSubmittedRegister value) formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuestionsRequestedRegister value)? questionsRequested,
    TResult Function(_FormSubmittedRegister value)? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  final RegisterEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterEvent) _then;
}

/// @nodoc
abstract class _$QuestionsRequestedRegisterCopyWith<$Res> {
  factory _$QuestionsRequestedRegisterCopyWith(
          _QuestionsRequestedRegister value,
          $Res Function(_QuestionsRequestedRegister) then) =
      __$QuestionsRequestedRegisterCopyWithImpl<$Res>;
}

/// @nodoc
class __$QuestionsRequestedRegisterCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$QuestionsRequestedRegisterCopyWith<$Res> {
  __$QuestionsRequestedRegisterCopyWithImpl(_QuestionsRequestedRegister _value,
      $Res Function(_QuestionsRequestedRegister) _then)
      : super(_value, (v) => _then(v as _QuestionsRequestedRegister));

  @override
  _QuestionsRequestedRegister get _value =>
      super._value as _QuestionsRequestedRegister;
}

/// @nodoc

class _$_QuestionsRequestedRegister implements _QuestionsRequestedRegister {
  const _$_QuestionsRequestedRegister();

  @override
  String toString() {
    return 'RegisterEvent.questionsRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _QuestionsRequestedRegister);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() questionsRequested,
    required TResult Function(List<String> answers, String ci,
            String passwordFirst, String passwordSecond, List<String> questions)
        formSubmitted,
  }) {
    return questionsRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? questionsRequested,
    TResult Function(List<String> answers, String ci, String passwordFirst,
            String passwordSecond, List<String> questions)?
        formSubmitted,
    required TResult orElse(),
  }) {
    if (questionsRequested != null) {
      return questionsRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuestionsRequestedRegister value)
        questionsRequested,
    required TResult Function(_FormSubmittedRegister value) formSubmitted,
  }) {
    return questionsRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuestionsRequestedRegister value)? questionsRequested,
    TResult Function(_FormSubmittedRegister value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (questionsRequested != null) {
      return questionsRequested(this);
    }
    return orElse();
  }
}

abstract class _QuestionsRequestedRegister implements RegisterEvent {
  const factory _QuestionsRequestedRegister() = _$_QuestionsRequestedRegister;
}

/// @nodoc
abstract class _$FormSubmittedRegisterCopyWith<$Res> {
  factory _$FormSubmittedRegisterCopyWith(_FormSubmittedRegister value,
          $Res Function(_FormSubmittedRegister) then) =
      __$FormSubmittedRegisterCopyWithImpl<$Res>;
  $Res call(
      {List<String> answers,
      String ci,
      String passwordFirst,
      String passwordSecond,
      List<String> questions});
}

/// @nodoc
class __$FormSubmittedRegisterCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$FormSubmittedRegisterCopyWith<$Res> {
  __$FormSubmittedRegisterCopyWithImpl(_FormSubmittedRegister _value,
      $Res Function(_FormSubmittedRegister) _then)
      : super(_value, (v) => _then(v as _FormSubmittedRegister));

  @override
  _FormSubmittedRegister get _value => super._value as _FormSubmittedRegister;

  @override
  $Res call({
    Object? answers = freezed,
    Object? ci = freezed,
    Object? passwordFirst = freezed,
    Object? passwordSecond = freezed,
    Object? questions = freezed,
  }) {
    return _then(_FormSubmittedRegister(
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ci: ci == freezed
          ? _value.ci
          : ci // ignore: cast_nullable_to_non_nullable
              as String,
      passwordFirst: passwordFirst == freezed
          ? _value.passwordFirst
          : passwordFirst // ignore: cast_nullable_to_non_nullable
              as String,
      passwordSecond: passwordSecond == freezed
          ? _value.passwordSecond
          : passwordSecond // ignore: cast_nullable_to_non_nullable
              as String,
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_FormSubmittedRegister implements _FormSubmittedRegister {
  const _$_FormSubmittedRegister(
      {required this.answers,
      required this.ci,
      required this.passwordFirst,
      required this.passwordSecond,
      required this.questions});

  @override
  final List<String> answers;
  @override
  final String ci;
  @override
  final String passwordFirst;
  @override
  final String passwordSecond;
  @override
  final List<String> questions;

  @override
  String toString() {
    return 'RegisterEvent.formSubmitted(answers: $answers, ci: $ci, passwordFirst: $passwordFirst, passwordSecond: $passwordSecond, questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FormSubmittedRegister &&
            (identical(other.answers, answers) ||
                const DeepCollectionEquality()
                    .equals(other.answers, answers)) &&
            (identical(other.ci, ci) ||
                const DeepCollectionEquality().equals(other.ci, ci)) &&
            (identical(other.passwordFirst, passwordFirst) ||
                const DeepCollectionEquality()
                    .equals(other.passwordFirst, passwordFirst)) &&
            (identical(other.passwordSecond, passwordSecond) ||
                const DeepCollectionEquality()
                    .equals(other.passwordSecond, passwordSecond)) &&
            (identical(other.questions, questions) ||
                const DeepCollectionEquality()
                    .equals(other.questions, questions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(answers) ^
      const DeepCollectionEquality().hash(ci) ^
      const DeepCollectionEquality().hash(passwordFirst) ^
      const DeepCollectionEquality().hash(passwordSecond) ^
      const DeepCollectionEquality().hash(questions);

  @JsonKey(ignore: true)
  @override
  _$FormSubmittedRegisterCopyWith<_FormSubmittedRegister> get copyWith =>
      __$FormSubmittedRegisterCopyWithImpl<_FormSubmittedRegister>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() questionsRequested,
    required TResult Function(List<String> answers, String ci,
            String passwordFirst, String passwordSecond, List<String> questions)
        formSubmitted,
  }) {
    return formSubmitted(answers, ci, passwordFirst, passwordSecond, questions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? questionsRequested,
    TResult Function(List<String> answers, String ci, String passwordFirst,
            String passwordSecond, List<String> questions)?
        formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(
          answers, ci, passwordFirst, passwordSecond, questions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuestionsRequestedRegister value)
        questionsRequested,
    required TResult Function(_FormSubmittedRegister value) formSubmitted,
  }) {
    return formSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuestionsRequestedRegister value)? questionsRequested,
    TResult Function(_FormSubmittedRegister value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(this);
    }
    return orElse();
  }
}

abstract class _FormSubmittedRegister implements RegisterEvent {
  const factory _FormSubmittedRegister(
      {required List<String> answers,
      required String ci,
      required String passwordFirst,
      required String passwordSecond,
      required List<String> questions}) = _$_FormSubmittedRegister;

  List<String> get answers => throw _privateConstructorUsedError;
  String get ci => throw _privateConstructorUsedError;
  String get passwordFirst => throw _privateConstructorUsedError;
  String get passwordSecond => throw _privateConstructorUsedError;
  List<String> get questions => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FormSubmittedRegisterCopyWith<_FormSubmittedRegister> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RegisterStateTearOff {
  const _$RegisterStateTearOff();

  _RegisterInitial initial() {
    return const _RegisterInitial();
  }

  _RegisterLoadInitialDataInProgress initialLoadInProgress() {
    return const _RegisterLoadInitialDataInProgress();
  }

  _RegisterLoadInitialDataFailure initialLoadFailure({required String error}) {
    return _RegisterLoadInitialDataFailure(
      error: error,
    );
  }

  _RegisterLoadInitialDataSuccess initialLoadSuccess(
      {required List<String> questions}) {
    return _RegisterLoadInitialDataSuccess(
      questions: questions,
    );
  }

  _RegisterUserInProgress registrationInProgress() {
    return const _RegisterUserInProgress();
  }

  _RegisterUserFailure registrationFailure({required String error}) {
    return _RegisterUserFailure(
      error: error,
    );
  }

  _RegisterUserSuccess registrationSuccess({required String userEmail}) {
    return _RegisterUserSuccess(
      userEmail: userEmail,
    );
  }
}

/// @nodoc
const $RegisterState = _$RegisterStateTearOff();

/// @nodoc
mixin _$RegisterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initialLoadInProgress,
    required TResult Function(String error) initialLoadFailure,
    required TResult Function(List<String> questions) initialLoadSuccess,
    required TResult Function() registrationInProgress,
    required TResult Function(String error) registrationFailure,
    required TResult Function(String userEmail) registrationSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initialLoadInProgress,
    TResult Function(String error)? initialLoadFailure,
    TResult Function(List<String> questions)? initialLoadSuccess,
    TResult Function()? registrationInProgress,
    TResult Function(String error)? registrationFailure,
    TResult Function(String userEmail)? registrationSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterInitial value) initial,
    required TResult Function(_RegisterLoadInitialDataInProgress value)
        initialLoadInProgress,
    required TResult Function(_RegisterLoadInitialDataFailure value)
        initialLoadFailure,
    required TResult Function(_RegisterLoadInitialDataSuccess value)
        initialLoadSuccess,
    required TResult Function(_RegisterUserInProgress value)
        registrationInProgress,
    required TResult Function(_RegisterUserFailure value) registrationFailure,
    required TResult Function(_RegisterUserSuccess value) registrationSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterInitial value)? initial,
    TResult Function(_RegisterLoadInitialDataInProgress value)?
        initialLoadInProgress,
    TResult Function(_RegisterLoadInitialDataFailure value)? initialLoadFailure,
    TResult Function(_RegisterLoadInitialDataSuccess value)? initialLoadSuccess,
    TResult Function(_RegisterUserInProgress value)? registrationInProgress,
    TResult Function(_RegisterUserFailure value)? registrationFailure,
    TResult Function(_RegisterUserSuccess value)? registrationSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;
}

/// @nodoc
abstract class _$RegisterInitialCopyWith<$Res> {
  factory _$RegisterInitialCopyWith(
          _RegisterInitial value, $Res Function(_RegisterInitial) then) =
      __$RegisterInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterInitialCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterInitialCopyWith<$Res> {
  __$RegisterInitialCopyWithImpl(
      _RegisterInitial _value, $Res Function(_RegisterInitial) _then)
      : super(_value, (v) => _then(v as _RegisterInitial));

  @override
  _RegisterInitial get _value => super._value as _RegisterInitial;
}

/// @nodoc

class _$_RegisterInitial implements _RegisterInitial {
  const _$_RegisterInitial();

  @override
  String toString() {
    return 'RegisterState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RegisterInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initialLoadInProgress,
    required TResult Function(String error) initialLoadFailure,
    required TResult Function(List<String> questions) initialLoadSuccess,
    required TResult Function() registrationInProgress,
    required TResult Function(String error) registrationFailure,
    required TResult Function(String userEmail) registrationSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initialLoadInProgress,
    TResult Function(String error)? initialLoadFailure,
    TResult Function(List<String> questions)? initialLoadSuccess,
    TResult Function()? registrationInProgress,
    TResult Function(String error)? registrationFailure,
    TResult Function(String userEmail)? registrationSuccess,
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
    required TResult Function(_RegisterInitial value) initial,
    required TResult Function(_RegisterLoadInitialDataInProgress value)
        initialLoadInProgress,
    required TResult Function(_RegisterLoadInitialDataFailure value)
        initialLoadFailure,
    required TResult Function(_RegisterLoadInitialDataSuccess value)
        initialLoadSuccess,
    required TResult Function(_RegisterUserInProgress value)
        registrationInProgress,
    required TResult Function(_RegisterUserFailure value) registrationFailure,
    required TResult Function(_RegisterUserSuccess value) registrationSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterInitial value)? initial,
    TResult Function(_RegisterLoadInitialDataInProgress value)?
        initialLoadInProgress,
    TResult Function(_RegisterLoadInitialDataFailure value)? initialLoadFailure,
    TResult Function(_RegisterLoadInitialDataSuccess value)? initialLoadSuccess,
    TResult Function(_RegisterUserInProgress value)? registrationInProgress,
    TResult Function(_RegisterUserFailure value)? registrationFailure,
    TResult Function(_RegisterUserSuccess value)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _RegisterInitial implements RegisterState {
  const factory _RegisterInitial() = _$_RegisterInitial;
}

/// @nodoc
abstract class _$RegisterLoadInitialDataInProgressCopyWith<$Res> {
  factory _$RegisterLoadInitialDataInProgressCopyWith(
          _RegisterLoadInitialDataInProgress value,
          $Res Function(_RegisterLoadInitialDataInProgress) then) =
      __$RegisterLoadInitialDataInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterLoadInitialDataInProgressCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterLoadInitialDataInProgressCopyWith<$Res> {
  __$RegisterLoadInitialDataInProgressCopyWithImpl(
      _RegisterLoadInitialDataInProgress _value,
      $Res Function(_RegisterLoadInitialDataInProgress) _then)
      : super(_value, (v) => _then(v as _RegisterLoadInitialDataInProgress));

  @override
  _RegisterLoadInitialDataInProgress get _value =>
      super._value as _RegisterLoadInitialDataInProgress;
}

/// @nodoc

class _$_RegisterLoadInitialDataInProgress
    implements _RegisterLoadInitialDataInProgress {
  const _$_RegisterLoadInitialDataInProgress();

  @override
  String toString() {
    return 'RegisterState.initialLoadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterLoadInitialDataInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initialLoadInProgress,
    required TResult Function(String error) initialLoadFailure,
    required TResult Function(List<String> questions) initialLoadSuccess,
    required TResult Function() registrationInProgress,
    required TResult Function(String error) registrationFailure,
    required TResult Function(String userEmail) registrationSuccess,
  }) {
    return initialLoadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initialLoadInProgress,
    TResult Function(String error)? initialLoadFailure,
    TResult Function(List<String> questions)? initialLoadSuccess,
    TResult Function()? registrationInProgress,
    TResult Function(String error)? registrationFailure,
    TResult Function(String userEmail)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (initialLoadInProgress != null) {
      return initialLoadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterInitial value) initial,
    required TResult Function(_RegisterLoadInitialDataInProgress value)
        initialLoadInProgress,
    required TResult Function(_RegisterLoadInitialDataFailure value)
        initialLoadFailure,
    required TResult Function(_RegisterLoadInitialDataSuccess value)
        initialLoadSuccess,
    required TResult Function(_RegisterUserInProgress value)
        registrationInProgress,
    required TResult Function(_RegisterUserFailure value) registrationFailure,
    required TResult Function(_RegisterUserSuccess value) registrationSuccess,
  }) {
    return initialLoadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterInitial value)? initial,
    TResult Function(_RegisterLoadInitialDataInProgress value)?
        initialLoadInProgress,
    TResult Function(_RegisterLoadInitialDataFailure value)? initialLoadFailure,
    TResult Function(_RegisterLoadInitialDataSuccess value)? initialLoadSuccess,
    TResult Function(_RegisterUserInProgress value)? registrationInProgress,
    TResult Function(_RegisterUserFailure value)? registrationFailure,
    TResult Function(_RegisterUserSuccess value)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (initialLoadInProgress != null) {
      return initialLoadInProgress(this);
    }
    return orElse();
  }
}

abstract class _RegisterLoadInitialDataInProgress implements RegisterState {
  const factory _RegisterLoadInitialDataInProgress() =
      _$_RegisterLoadInitialDataInProgress;
}

/// @nodoc
abstract class _$RegisterLoadInitialDataFailureCopyWith<$Res> {
  factory _$RegisterLoadInitialDataFailureCopyWith(
          _RegisterLoadInitialDataFailure value,
          $Res Function(_RegisterLoadInitialDataFailure) then) =
      __$RegisterLoadInitialDataFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$RegisterLoadInitialDataFailureCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterLoadInitialDataFailureCopyWith<$Res> {
  __$RegisterLoadInitialDataFailureCopyWithImpl(
      _RegisterLoadInitialDataFailure _value,
      $Res Function(_RegisterLoadInitialDataFailure) _then)
      : super(_value, (v) => _then(v as _RegisterLoadInitialDataFailure));

  @override
  _RegisterLoadInitialDataFailure get _value =>
      super._value as _RegisterLoadInitialDataFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_RegisterLoadInitialDataFailure(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterLoadInitialDataFailure
    implements _RegisterLoadInitialDataFailure {
  const _$_RegisterLoadInitialDataFailure({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'RegisterState.initialLoadFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterLoadInitialDataFailure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$RegisterLoadInitialDataFailureCopyWith<_RegisterLoadInitialDataFailure>
      get copyWith => __$RegisterLoadInitialDataFailureCopyWithImpl<
          _RegisterLoadInitialDataFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initialLoadInProgress,
    required TResult Function(String error) initialLoadFailure,
    required TResult Function(List<String> questions) initialLoadSuccess,
    required TResult Function() registrationInProgress,
    required TResult Function(String error) registrationFailure,
    required TResult Function(String userEmail) registrationSuccess,
  }) {
    return initialLoadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initialLoadInProgress,
    TResult Function(String error)? initialLoadFailure,
    TResult Function(List<String> questions)? initialLoadSuccess,
    TResult Function()? registrationInProgress,
    TResult Function(String error)? registrationFailure,
    TResult Function(String userEmail)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (initialLoadFailure != null) {
      return initialLoadFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterInitial value) initial,
    required TResult Function(_RegisterLoadInitialDataInProgress value)
        initialLoadInProgress,
    required TResult Function(_RegisterLoadInitialDataFailure value)
        initialLoadFailure,
    required TResult Function(_RegisterLoadInitialDataSuccess value)
        initialLoadSuccess,
    required TResult Function(_RegisterUserInProgress value)
        registrationInProgress,
    required TResult Function(_RegisterUserFailure value) registrationFailure,
    required TResult Function(_RegisterUserSuccess value) registrationSuccess,
  }) {
    return initialLoadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterInitial value)? initial,
    TResult Function(_RegisterLoadInitialDataInProgress value)?
        initialLoadInProgress,
    TResult Function(_RegisterLoadInitialDataFailure value)? initialLoadFailure,
    TResult Function(_RegisterLoadInitialDataSuccess value)? initialLoadSuccess,
    TResult Function(_RegisterUserInProgress value)? registrationInProgress,
    TResult Function(_RegisterUserFailure value)? registrationFailure,
    TResult Function(_RegisterUserSuccess value)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (initialLoadFailure != null) {
      return initialLoadFailure(this);
    }
    return orElse();
  }
}

abstract class _RegisterLoadInitialDataFailure implements RegisterState {
  const factory _RegisterLoadInitialDataFailure({required String error}) =
      _$_RegisterLoadInitialDataFailure;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RegisterLoadInitialDataFailureCopyWith<_RegisterLoadInitialDataFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RegisterLoadInitialDataSuccessCopyWith<$Res> {
  factory _$RegisterLoadInitialDataSuccessCopyWith(
          _RegisterLoadInitialDataSuccess value,
          $Res Function(_RegisterLoadInitialDataSuccess) then) =
      __$RegisterLoadInitialDataSuccessCopyWithImpl<$Res>;
  $Res call({List<String> questions});
}

/// @nodoc
class __$RegisterLoadInitialDataSuccessCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterLoadInitialDataSuccessCopyWith<$Res> {
  __$RegisterLoadInitialDataSuccessCopyWithImpl(
      _RegisterLoadInitialDataSuccess _value,
      $Res Function(_RegisterLoadInitialDataSuccess) _then)
      : super(_value, (v) => _then(v as _RegisterLoadInitialDataSuccess));

  @override
  _RegisterLoadInitialDataSuccess get _value =>
      super._value as _RegisterLoadInitialDataSuccess;

  @override
  $Res call({
    Object? questions = freezed,
  }) {
    return _then(_RegisterLoadInitialDataSuccess(
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_RegisterLoadInitialDataSuccess
    implements _RegisterLoadInitialDataSuccess {
  const _$_RegisterLoadInitialDataSuccess({required this.questions});

  @override
  final List<String> questions;

  @override
  String toString() {
    return 'RegisterState.initialLoadSuccess(questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterLoadInitialDataSuccess &&
            (identical(other.questions, questions) ||
                const DeepCollectionEquality()
                    .equals(other.questions, questions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(questions);

  @JsonKey(ignore: true)
  @override
  _$RegisterLoadInitialDataSuccessCopyWith<_RegisterLoadInitialDataSuccess>
      get copyWith => __$RegisterLoadInitialDataSuccessCopyWithImpl<
          _RegisterLoadInitialDataSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initialLoadInProgress,
    required TResult Function(String error) initialLoadFailure,
    required TResult Function(List<String> questions) initialLoadSuccess,
    required TResult Function() registrationInProgress,
    required TResult Function(String error) registrationFailure,
    required TResult Function(String userEmail) registrationSuccess,
  }) {
    return initialLoadSuccess(questions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initialLoadInProgress,
    TResult Function(String error)? initialLoadFailure,
    TResult Function(List<String> questions)? initialLoadSuccess,
    TResult Function()? registrationInProgress,
    TResult Function(String error)? registrationFailure,
    TResult Function(String userEmail)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (initialLoadSuccess != null) {
      return initialLoadSuccess(questions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterInitial value) initial,
    required TResult Function(_RegisterLoadInitialDataInProgress value)
        initialLoadInProgress,
    required TResult Function(_RegisterLoadInitialDataFailure value)
        initialLoadFailure,
    required TResult Function(_RegisterLoadInitialDataSuccess value)
        initialLoadSuccess,
    required TResult Function(_RegisterUserInProgress value)
        registrationInProgress,
    required TResult Function(_RegisterUserFailure value) registrationFailure,
    required TResult Function(_RegisterUserSuccess value) registrationSuccess,
  }) {
    return initialLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterInitial value)? initial,
    TResult Function(_RegisterLoadInitialDataInProgress value)?
        initialLoadInProgress,
    TResult Function(_RegisterLoadInitialDataFailure value)? initialLoadFailure,
    TResult Function(_RegisterLoadInitialDataSuccess value)? initialLoadSuccess,
    TResult Function(_RegisterUserInProgress value)? registrationInProgress,
    TResult Function(_RegisterUserFailure value)? registrationFailure,
    TResult Function(_RegisterUserSuccess value)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (initialLoadSuccess != null) {
      return initialLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class _RegisterLoadInitialDataSuccess implements RegisterState {
  const factory _RegisterLoadInitialDataSuccess(
      {required List<String> questions}) = _$_RegisterLoadInitialDataSuccess;

  List<String> get questions => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RegisterLoadInitialDataSuccessCopyWith<_RegisterLoadInitialDataSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RegisterUserInProgressCopyWith<$Res> {
  factory _$RegisterUserInProgressCopyWith(_RegisterUserInProgress value,
          $Res Function(_RegisterUserInProgress) then) =
      __$RegisterUserInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterUserInProgressCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterUserInProgressCopyWith<$Res> {
  __$RegisterUserInProgressCopyWithImpl(_RegisterUserInProgress _value,
      $Res Function(_RegisterUserInProgress) _then)
      : super(_value, (v) => _then(v as _RegisterUserInProgress));

  @override
  _RegisterUserInProgress get _value => super._value as _RegisterUserInProgress;
}

/// @nodoc

class _$_RegisterUserInProgress implements _RegisterUserInProgress {
  const _$_RegisterUserInProgress();

  @override
  String toString() {
    return 'RegisterState.registrationInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RegisterUserInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initialLoadInProgress,
    required TResult Function(String error) initialLoadFailure,
    required TResult Function(List<String> questions) initialLoadSuccess,
    required TResult Function() registrationInProgress,
    required TResult Function(String error) registrationFailure,
    required TResult Function(String userEmail) registrationSuccess,
  }) {
    return registrationInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initialLoadInProgress,
    TResult Function(String error)? initialLoadFailure,
    TResult Function(List<String> questions)? initialLoadSuccess,
    TResult Function()? registrationInProgress,
    TResult Function(String error)? registrationFailure,
    TResult Function(String userEmail)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (registrationInProgress != null) {
      return registrationInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterInitial value) initial,
    required TResult Function(_RegisterLoadInitialDataInProgress value)
        initialLoadInProgress,
    required TResult Function(_RegisterLoadInitialDataFailure value)
        initialLoadFailure,
    required TResult Function(_RegisterLoadInitialDataSuccess value)
        initialLoadSuccess,
    required TResult Function(_RegisterUserInProgress value)
        registrationInProgress,
    required TResult Function(_RegisterUserFailure value) registrationFailure,
    required TResult Function(_RegisterUserSuccess value) registrationSuccess,
  }) {
    return registrationInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterInitial value)? initial,
    TResult Function(_RegisterLoadInitialDataInProgress value)?
        initialLoadInProgress,
    TResult Function(_RegisterLoadInitialDataFailure value)? initialLoadFailure,
    TResult Function(_RegisterLoadInitialDataSuccess value)? initialLoadSuccess,
    TResult Function(_RegisterUserInProgress value)? registrationInProgress,
    TResult Function(_RegisterUserFailure value)? registrationFailure,
    TResult Function(_RegisterUserSuccess value)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (registrationInProgress != null) {
      return registrationInProgress(this);
    }
    return orElse();
  }
}

abstract class _RegisterUserInProgress implements RegisterState {
  const factory _RegisterUserInProgress() = _$_RegisterUserInProgress;
}

/// @nodoc
abstract class _$RegisterUserFailureCopyWith<$Res> {
  factory _$RegisterUserFailureCopyWith(_RegisterUserFailure value,
          $Res Function(_RegisterUserFailure) then) =
      __$RegisterUserFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$RegisterUserFailureCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterUserFailureCopyWith<$Res> {
  __$RegisterUserFailureCopyWithImpl(
      _RegisterUserFailure _value, $Res Function(_RegisterUserFailure) _then)
      : super(_value, (v) => _then(v as _RegisterUserFailure));

  @override
  _RegisterUserFailure get _value => super._value as _RegisterUserFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_RegisterUserFailure(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterUserFailure implements _RegisterUserFailure {
  const _$_RegisterUserFailure({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'RegisterState.registrationFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterUserFailure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$RegisterUserFailureCopyWith<_RegisterUserFailure> get copyWith =>
      __$RegisterUserFailureCopyWithImpl<_RegisterUserFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initialLoadInProgress,
    required TResult Function(String error) initialLoadFailure,
    required TResult Function(List<String> questions) initialLoadSuccess,
    required TResult Function() registrationInProgress,
    required TResult Function(String error) registrationFailure,
    required TResult Function(String userEmail) registrationSuccess,
  }) {
    return registrationFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initialLoadInProgress,
    TResult Function(String error)? initialLoadFailure,
    TResult Function(List<String> questions)? initialLoadSuccess,
    TResult Function()? registrationInProgress,
    TResult Function(String error)? registrationFailure,
    TResult Function(String userEmail)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (registrationFailure != null) {
      return registrationFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterInitial value) initial,
    required TResult Function(_RegisterLoadInitialDataInProgress value)
        initialLoadInProgress,
    required TResult Function(_RegisterLoadInitialDataFailure value)
        initialLoadFailure,
    required TResult Function(_RegisterLoadInitialDataSuccess value)
        initialLoadSuccess,
    required TResult Function(_RegisterUserInProgress value)
        registrationInProgress,
    required TResult Function(_RegisterUserFailure value) registrationFailure,
    required TResult Function(_RegisterUserSuccess value) registrationSuccess,
  }) {
    return registrationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterInitial value)? initial,
    TResult Function(_RegisterLoadInitialDataInProgress value)?
        initialLoadInProgress,
    TResult Function(_RegisterLoadInitialDataFailure value)? initialLoadFailure,
    TResult Function(_RegisterLoadInitialDataSuccess value)? initialLoadSuccess,
    TResult Function(_RegisterUserInProgress value)? registrationInProgress,
    TResult Function(_RegisterUserFailure value)? registrationFailure,
    TResult Function(_RegisterUserSuccess value)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (registrationFailure != null) {
      return registrationFailure(this);
    }
    return orElse();
  }
}

abstract class _RegisterUserFailure implements RegisterState {
  const factory _RegisterUserFailure({required String error}) =
      _$_RegisterUserFailure;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RegisterUserFailureCopyWith<_RegisterUserFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RegisterUserSuccessCopyWith<$Res> {
  factory _$RegisterUserSuccessCopyWith(_RegisterUserSuccess value,
          $Res Function(_RegisterUserSuccess) then) =
      __$RegisterUserSuccessCopyWithImpl<$Res>;
  $Res call({String userEmail});
}

/// @nodoc
class __$RegisterUserSuccessCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterUserSuccessCopyWith<$Res> {
  __$RegisterUserSuccessCopyWithImpl(
      _RegisterUserSuccess _value, $Res Function(_RegisterUserSuccess) _then)
      : super(_value, (v) => _then(v as _RegisterUserSuccess));

  @override
  _RegisterUserSuccess get _value => super._value as _RegisterUserSuccess;

  @override
  $Res call({
    Object? userEmail = freezed,
  }) {
    return _then(_RegisterUserSuccess(
      userEmail: userEmail == freezed
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterUserSuccess implements _RegisterUserSuccess {
  const _$_RegisterUserSuccess({required this.userEmail});

  @override
  final String userEmail;

  @override
  String toString() {
    return 'RegisterState.registrationSuccess(userEmail: $userEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterUserSuccess &&
            (identical(other.userEmail, userEmail) ||
                const DeepCollectionEquality()
                    .equals(other.userEmail, userEmail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userEmail);

  @JsonKey(ignore: true)
  @override
  _$RegisterUserSuccessCopyWith<_RegisterUserSuccess> get copyWith =>
      __$RegisterUserSuccessCopyWithImpl<_RegisterUserSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initialLoadInProgress,
    required TResult Function(String error) initialLoadFailure,
    required TResult Function(List<String> questions) initialLoadSuccess,
    required TResult Function() registrationInProgress,
    required TResult Function(String error) registrationFailure,
    required TResult Function(String userEmail) registrationSuccess,
  }) {
    return registrationSuccess(userEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initialLoadInProgress,
    TResult Function(String error)? initialLoadFailure,
    TResult Function(List<String> questions)? initialLoadSuccess,
    TResult Function()? registrationInProgress,
    TResult Function(String error)? registrationFailure,
    TResult Function(String userEmail)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (registrationSuccess != null) {
      return registrationSuccess(userEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterInitial value) initial,
    required TResult Function(_RegisterLoadInitialDataInProgress value)
        initialLoadInProgress,
    required TResult Function(_RegisterLoadInitialDataFailure value)
        initialLoadFailure,
    required TResult Function(_RegisterLoadInitialDataSuccess value)
        initialLoadSuccess,
    required TResult Function(_RegisterUserInProgress value)
        registrationInProgress,
    required TResult Function(_RegisterUserFailure value) registrationFailure,
    required TResult Function(_RegisterUserSuccess value) registrationSuccess,
  }) {
    return registrationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterInitial value)? initial,
    TResult Function(_RegisterLoadInitialDataInProgress value)?
        initialLoadInProgress,
    TResult Function(_RegisterLoadInitialDataFailure value)? initialLoadFailure,
    TResult Function(_RegisterLoadInitialDataSuccess value)? initialLoadSuccess,
    TResult Function(_RegisterUserInProgress value)? registrationInProgress,
    TResult Function(_RegisterUserFailure value)? registrationFailure,
    TResult Function(_RegisterUserSuccess value)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (registrationSuccess != null) {
      return registrationSuccess(this);
    }
    return orElse();
  }
}

abstract class _RegisterUserSuccess implements RegisterState {
  const factory _RegisterUserSuccess({required String userEmail}) =
      _$_RegisterUserSuccess;

  String get userEmail => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RegisterUserSuccessCopyWith<_RegisterUserSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
