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

  _$QuestionsRequestedRegister questionsRequested() {
    return const _$QuestionsRequestedRegister();
  }

  _$FormSubmittedRegister formSubmitted(
      {required List<String> answers,
      required String ci,
      required String passwordFirst,
      required String passwordSecond,
      required List<String> questions}) {
    return _$FormSubmittedRegister(
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
    required TResult Function(_$QuestionsRequestedRegister value)
        questionsRequested,
    required TResult Function(_$FormSubmittedRegister value) formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$QuestionsRequestedRegister value)? questionsRequested,
    TResult Function(_$FormSubmittedRegister value)? formSubmitted,
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
abstract class _$$QuestionsRequestedRegisterCopyWith<$Res> {
  factory _$$QuestionsRequestedRegisterCopyWith(
          _$QuestionsRequestedRegister value,
          $Res Function(_$QuestionsRequestedRegister) then) =
      __$$QuestionsRequestedRegisterCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuestionsRequestedRegisterCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$$QuestionsRequestedRegisterCopyWith<$Res> {
  __$$QuestionsRequestedRegisterCopyWithImpl(
      _$QuestionsRequestedRegister _value,
      $Res Function(_$QuestionsRequestedRegister) _then)
      : super(_value, (v) => _then(v as _$QuestionsRequestedRegister));

  @override
  _$QuestionsRequestedRegister get _value =>
      super._value as _$QuestionsRequestedRegister;
}

/// @nodoc

class _$_$QuestionsRequestedRegister implements _$QuestionsRequestedRegister {
  const _$_$QuestionsRequestedRegister();

  @override
  String toString() {
    return 'RegisterEvent.questionsRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _$QuestionsRequestedRegister);
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
    required TResult Function(_$QuestionsRequestedRegister value)
        questionsRequested,
    required TResult Function(_$FormSubmittedRegister value) formSubmitted,
  }) {
    return questionsRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$QuestionsRequestedRegister value)? questionsRequested,
    TResult Function(_$FormSubmittedRegister value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (questionsRequested != null) {
      return questionsRequested(this);
    }
    return orElse();
  }
}

abstract class _$QuestionsRequestedRegister implements RegisterEvent {
  const factory _$QuestionsRequestedRegister() = _$_$QuestionsRequestedRegister;
}

/// @nodoc
abstract class _$$FormSubmittedRegisterCopyWith<$Res> {
  factory _$$FormSubmittedRegisterCopyWith(_$FormSubmittedRegister value,
          $Res Function(_$FormSubmittedRegister) then) =
      __$$FormSubmittedRegisterCopyWithImpl<$Res>;
  $Res call(
      {List<String> answers,
      String ci,
      String passwordFirst,
      String passwordSecond,
      List<String> questions});
}

/// @nodoc
class __$$FormSubmittedRegisterCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$$FormSubmittedRegisterCopyWith<$Res> {
  __$$FormSubmittedRegisterCopyWithImpl(_$FormSubmittedRegister _value,
      $Res Function(_$FormSubmittedRegister) _then)
      : super(_value, (v) => _then(v as _$FormSubmittedRegister));

  @override
  _$FormSubmittedRegister get _value => super._value as _$FormSubmittedRegister;

  @override
  $Res call({
    Object? answers = freezed,
    Object? ci = freezed,
    Object? passwordFirst = freezed,
    Object? passwordSecond = freezed,
    Object? questions = freezed,
  }) {
    return _then(_$FormSubmittedRegister(
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

class _$_$FormSubmittedRegister implements _$FormSubmittedRegister {
  const _$_$FormSubmittedRegister(
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
        (other is _$FormSubmittedRegister &&
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
  _$$FormSubmittedRegisterCopyWith<_$FormSubmittedRegister> get copyWith =>
      __$$FormSubmittedRegisterCopyWithImpl<_$FormSubmittedRegister>(
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
    required TResult Function(_$QuestionsRequestedRegister value)
        questionsRequested,
    required TResult Function(_$FormSubmittedRegister value) formSubmitted,
  }) {
    return formSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$QuestionsRequestedRegister value)? questionsRequested,
    TResult Function(_$FormSubmittedRegister value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(this);
    }
    return orElse();
  }
}

abstract class _$FormSubmittedRegister implements RegisterEvent {
  const factory _$FormSubmittedRegister(
      {required List<String> answers,
      required String ci,
      required String passwordFirst,
      required String passwordSecond,
      required List<String> questions}) = _$_$FormSubmittedRegister;

  List<String> get answers => throw _privateConstructorUsedError;
  String get ci => throw _privateConstructorUsedError;
  String get passwordFirst => throw _privateConstructorUsedError;
  String get passwordSecond => throw _privateConstructorUsedError;
  List<String> get questions => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FormSubmittedRegisterCopyWith<_$FormSubmittedRegister> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RegisterStateTearOff {
  const _$RegisterStateTearOff();

  _$RegisterInitial initial() {
    return const _$RegisterInitial();
  }

  _$RegisterLoadInitialDataInProgress initialLoadInProgress() {
    return const _$RegisterLoadInitialDataInProgress();
  }

  _$RegisterLoadInitialDataFailure initialLoadFailure({required String error}) {
    return _$RegisterLoadInitialDataFailure(
      error: error,
    );
  }

  _$RegisterLoadInitialDataSuccess initialLoadSuccess(
      {required List<String> questions}) {
    return _$RegisterLoadInitialDataSuccess(
      questions: questions,
    );
  }

  _$RegisterUserInProgress registrationInProgress() {
    return const _$RegisterUserInProgress();
  }

  _$RegisterUserFailure registrationFailure({required String error}) {
    return _$RegisterUserFailure(
      error: error,
    );
  }

  _$RegisterUserSuccess registrationSuccess({required String userEmail}) {
    return _$RegisterUserSuccess(
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
    required TResult Function(_$RegisterInitial value) initial,
    required TResult Function(_$RegisterLoadInitialDataInProgress value)
        initialLoadInProgress,
    required TResult Function(_$RegisterLoadInitialDataFailure value)
        initialLoadFailure,
    required TResult Function(_$RegisterLoadInitialDataSuccess value)
        initialLoadSuccess,
    required TResult Function(_$RegisterUserInProgress value)
        registrationInProgress,
    required TResult Function(_$RegisterUserFailure value) registrationFailure,
    required TResult Function(_$RegisterUserSuccess value) registrationSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$RegisterInitial value)? initial,
    TResult Function(_$RegisterLoadInitialDataInProgress value)?
        initialLoadInProgress,
    TResult Function(_$RegisterLoadInitialDataFailure value)?
        initialLoadFailure,
    TResult Function(_$RegisterLoadInitialDataSuccess value)?
        initialLoadSuccess,
    TResult Function(_$RegisterUserInProgress value)? registrationInProgress,
    TResult Function(_$RegisterUserFailure value)? registrationFailure,
    TResult Function(_$RegisterUserSuccess value)? registrationSuccess,
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
abstract class _$$RegisterInitialCopyWith<$Res> {
  factory _$$RegisterInitialCopyWith(
          _$RegisterInitial value, $Res Function(_$RegisterInitial) then) =
      __$$RegisterInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterInitialCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$$RegisterInitialCopyWith<$Res> {
  __$$RegisterInitialCopyWithImpl(
      _$RegisterInitial _value, $Res Function(_$RegisterInitial) _then)
      : super(_value, (v) => _then(v as _$RegisterInitial));

  @override
  _$RegisterInitial get _value => super._value as _$RegisterInitial;
}

/// @nodoc

class _$_$RegisterInitial implements _$RegisterInitial {
  const _$_$RegisterInitial();

  @override
  String toString() {
    return 'RegisterState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _$RegisterInitial);
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
    required TResult Function(_$RegisterInitial value) initial,
    required TResult Function(_$RegisterLoadInitialDataInProgress value)
        initialLoadInProgress,
    required TResult Function(_$RegisterLoadInitialDataFailure value)
        initialLoadFailure,
    required TResult Function(_$RegisterLoadInitialDataSuccess value)
        initialLoadSuccess,
    required TResult Function(_$RegisterUserInProgress value)
        registrationInProgress,
    required TResult Function(_$RegisterUserFailure value) registrationFailure,
    required TResult Function(_$RegisterUserSuccess value) registrationSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$RegisterInitial value)? initial,
    TResult Function(_$RegisterLoadInitialDataInProgress value)?
        initialLoadInProgress,
    TResult Function(_$RegisterLoadInitialDataFailure value)?
        initialLoadFailure,
    TResult Function(_$RegisterLoadInitialDataSuccess value)?
        initialLoadSuccess,
    TResult Function(_$RegisterUserInProgress value)? registrationInProgress,
    TResult Function(_$RegisterUserFailure value)? registrationFailure,
    TResult Function(_$RegisterUserSuccess value)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _$RegisterInitial implements RegisterState {
  const factory _$RegisterInitial() = _$_$RegisterInitial;
}

/// @nodoc
abstract class _$$RegisterLoadInitialDataInProgressCopyWith<$Res> {
  factory _$$RegisterLoadInitialDataInProgressCopyWith(
          _$RegisterLoadInitialDataInProgress value,
          $Res Function(_$RegisterLoadInitialDataInProgress) then) =
      __$$RegisterLoadInitialDataInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterLoadInitialDataInProgressCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$$RegisterLoadInitialDataInProgressCopyWith<$Res> {
  __$$RegisterLoadInitialDataInProgressCopyWithImpl(
      _$RegisterLoadInitialDataInProgress _value,
      $Res Function(_$RegisterLoadInitialDataInProgress) _then)
      : super(_value, (v) => _then(v as _$RegisterLoadInitialDataInProgress));

  @override
  _$RegisterLoadInitialDataInProgress get _value =>
      super._value as _$RegisterLoadInitialDataInProgress;
}

/// @nodoc

class _$_$RegisterLoadInitialDataInProgress
    implements _$RegisterLoadInitialDataInProgress {
  const _$_$RegisterLoadInitialDataInProgress();

  @override
  String toString() {
    return 'RegisterState.initialLoadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$RegisterLoadInitialDataInProgress);
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
    required TResult Function(_$RegisterInitial value) initial,
    required TResult Function(_$RegisterLoadInitialDataInProgress value)
        initialLoadInProgress,
    required TResult Function(_$RegisterLoadInitialDataFailure value)
        initialLoadFailure,
    required TResult Function(_$RegisterLoadInitialDataSuccess value)
        initialLoadSuccess,
    required TResult Function(_$RegisterUserInProgress value)
        registrationInProgress,
    required TResult Function(_$RegisterUserFailure value) registrationFailure,
    required TResult Function(_$RegisterUserSuccess value) registrationSuccess,
  }) {
    return initialLoadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$RegisterInitial value)? initial,
    TResult Function(_$RegisterLoadInitialDataInProgress value)?
        initialLoadInProgress,
    TResult Function(_$RegisterLoadInitialDataFailure value)?
        initialLoadFailure,
    TResult Function(_$RegisterLoadInitialDataSuccess value)?
        initialLoadSuccess,
    TResult Function(_$RegisterUserInProgress value)? registrationInProgress,
    TResult Function(_$RegisterUserFailure value)? registrationFailure,
    TResult Function(_$RegisterUserSuccess value)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (initialLoadInProgress != null) {
      return initialLoadInProgress(this);
    }
    return orElse();
  }
}

abstract class _$RegisterLoadInitialDataInProgress implements RegisterState {
  const factory _$RegisterLoadInitialDataInProgress() =
      _$_$RegisterLoadInitialDataInProgress;
}

/// @nodoc
abstract class _$$RegisterLoadInitialDataFailureCopyWith<$Res> {
  factory _$$RegisterLoadInitialDataFailureCopyWith(
          _$RegisterLoadInitialDataFailure value,
          $Res Function(_$RegisterLoadInitialDataFailure) then) =
      __$$RegisterLoadInitialDataFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$RegisterLoadInitialDataFailureCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$$RegisterLoadInitialDataFailureCopyWith<$Res> {
  __$$RegisterLoadInitialDataFailureCopyWithImpl(
      _$RegisterLoadInitialDataFailure _value,
      $Res Function(_$RegisterLoadInitialDataFailure) _then)
      : super(_value, (v) => _then(v as _$RegisterLoadInitialDataFailure));

  @override
  _$RegisterLoadInitialDataFailure get _value =>
      super._value as _$RegisterLoadInitialDataFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$RegisterLoadInitialDataFailure(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$RegisterLoadInitialDataFailure
    implements _$RegisterLoadInitialDataFailure {
  const _$_$RegisterLoadInitialDataFailure({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'RegisterState.initialLoadFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$RegisterLoadInitialDataFailure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$$RegisterLoadInitialDataFailureCopyWith<_$RegisterLoadInitialDataFailure>
      get copyWith => __$$RegisterLoadInitialDataFailureCopyWithImpl<
          _$RegisterLoadInitialDataFailure>(this, _$identity);

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
    required TResult Function(_$RegisterInitial value) initial,
    required TResult Function(_$RegisterLoadInitialDataInProgress value)
        initialLoadInProgress,
    required TResult Function(_$RegisterLoadInitialDataFailure value)
        initialLoadFailure,
    required TResult Function(_$RegisterLoadInitialDataSuccess value)
        initialLoadSuccess,
    required TResult Function(_$RegisterUserInProgress value)
        registrationInProgress,
    required TResult Function(_$RegisterUserFailure value) registrationFailure,
    required TResult Function(_$RegisterUserSuccess value) registrationSuccess,
  }) {
    return initialLoadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$RegisterInitial value)? initial,
    TResult Function(_$RegisterLoadInitialDataInProgress value)?
        initialLoadInProgress,
    TResult Function(_$RegisterLoadInitialDataFailure value)?
        initialLoadFailure,
    TResult Function(_$RegisterLoadInitialDataSuccess value)?
        initialLoadSuccess,
    TResult Function(_$RegisterUserInProgress value)? registrationInProgress,
    TResult Function(_$RegisterUserFailure value)? registrationFailure,
    TResult Function(_$RegisterUserSuccess value)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (initialLoadFailure != null) {
      return initialLoadFailure(this);
    }
    return orElse();
  }
}

abstract class _$RegisterLoadInitialDataFailure implements RegisterState {
  const factory _$RegisterLoadInitialDataFailure({required String error}) =
      _$_$RegisterLoadInitialDataFailure;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$RegisterLoadInitialDataFailureCopyWith<_$RegisterLoadInitialDataFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterLoadInitialDataSuccessCopyWith<$Res> {
  factory _$$RegisterLoadInitialDataSuccessCopyWith(
          _$RegisterLoadInitialDataSuccess value,
          $Res Function(_$RegisterLoadInitialDataSuccess) then) =
      __$$RegisterLoadInitialDataSuccessCopyWithImpl<$Res>;
  $Res call({List<String> questions});
}

/// @nodoc
class __$$RegisterLoadInitialDataSuccessCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$$RegisterLoadInitialDataSuccessCopyWith<$Res> {
  __$$RegisterLoadInitialDataSuccessCopyWithImpl(
      _$RegisterLoadInitialDataSuccess _value,
      $Res Function(_$RegisterLoadInitialDataSuccess) _then)
      : super(_value, (v) => _then(v as _$RegisterLoadInitialDataSuccess));

  @override
  _$RegisterLoadInitialDataSuccess get _value =>
      super._value as _$RegisterLoadInitialDataSuccess;

  @override
  $Res call({
    Object? questions = freezed,
  }) {
    return _then(_$RegisterLoadInitialDataSuccess(
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_$RegisterLoadInitialDataSuccess
    implements _$RegisterLoadInitialDataSuccess {
  const _$_$RegisterLoadInitialDataSuccess({required this.questions});

  @override
  final List<String> questions;

  @override
  String toString() {
    return 'RegisterState.initialLoadSuccess(questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$RegisterLoadInitialDataSuccess &&
            (identical(other.questions, questions) ||
                const DeepCollectionEquality()
                    .equals(other.questions, questions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(questions);

  @JsonKey(ignore: true)
  @override
  _$$RegisterLoadInitialDataSuccessCopyWith<_$RegisterLoadInitialDataSuccess>
      get copyWith => __$$RegisterLoadInitialDataSuccessCopyWithImpl<
          _$RegisterLoadInitialDataSuccess>(this, _$identity);

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
    required TResult Function(_$RegisterInitial value) initial,
    required TResult Function(_$RegisterLoadInitialDataInProgress value)
        initialLoadInProgress,
    required TResult Function(_$RegisterLoadInitialDataFailure value)
        initialLoadFailure,
    required TResult Function(_$RegisterLoadInitialDataSuccess value)
        initialLoadSuccess,
    required TResult Function(_$RegisterUserInProgress value)
        registrationInProgress,
    required TResult Function(_$RegisterUserFailure value) registrationFailure,
    required TResult Function(_$RegisterUserSuccess value) registrationSuccess,
  }) {
    return initialLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$RegisterInitial value)? initial,
    TResult Function(_$RegisterLoadInitialDataInProgress value)?
        initialLoadInProgress,
    TResult Function(_$RegisterLoadInitialDataFailure value)?
        initialLoadFailure,
    TResult Function(_$RegisterLoadInitialDataSuccess value)?
        initialLoadSuccess,
    TResult Function(_$RegisterUserInProgress value)? registrationInProgress,
    TResult Function(_$RegisterUserFailure value)? registrationFailure,
    TResult Function(_$RegisterUserSuccess value)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (initialLoadSuccess != null) {
      return initialLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class _$RegisterLoadInitialDataSuccess implements RegisterState {
  const factory _$RegisterLoadInitialDataSuccess(
      {required List<String> questions}) = _$_$RegisterLoadInitialDataSuccess;

  List<String> get questions => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$RegisterLoadInitialDataSuccessCopyWith<_$RegisterLoadInitialDataSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterUserInProgressCopyWith<$Res> {
  factory _$$RegisterUserInProgressCopyWith(_$RegisterUserInProgress value,
          $Res Function(_$RegisterUserInProgress) then) =
      __$$RegisterUserInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterUserInProgressCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$$RegisterUserInProgressCopyWith<$Res> {
  __$$RegisterUserInProgressCopyWithImpl(_$RegisterUserInProgress _value,
      $Res Function(_$RegisterUserInProgress) _then)
      : super(_value, (v) => _then(v as _$RegisterUserInProgress));

  @override
  _$RegisterUserInProgress get _value =>
      super._value as _$RegisterUserInProgress;
}

/// @nodoc

class _$_$RegisterUserInProgress implements _$RegisterUserInProgress {
  const _$_$RegisterUserInProgress();

  @override
  String toString() {
    return 'RegisterState.registrationInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _$RegisterUserInProgress);
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
    required TResult Function(_$RegisterInitial value) initial,
    required TResult Function(_$RegisterLoadInitialDataInProgress value)
        initialLoadInProgress,
    required TResult Function(_$RegisterLoadInitialDataFailure value)
        initialLoadFailure,
    required TResult Function(_$RegisterLoadInitialDataSuccess value)
        initialLoadSuccess,
    required TResult Function(_$RegisterUserInProgress value)
        registrationInProgress,
    required TResult Function(_$RegisterUserFailure value) registrationFailure,
    required TResult Function(_$RegisterUserSuccess value) registrationSuccess,
  }) {
    return registrationInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$RegisterInitial value)? initial,
    TResult Function(_$RegisterLoadInitialDataInProgress value)?
        initialLoadInProgress,
    TResult Function(_$RegisterLoadInitialDataFailure value)?
        initialLoadFailure,
    TResult Function(_$RegisterLoadInitialDataSuccess value)?
        initialLoadSuccess,
    TResult Function(_$RegisterUserInProgress value)? registrationInProgress,
    TResult Function(_$RegisterUserFailure value)? registrationFailure,
    TResult Function(_$RegisterUserSuccess value)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (registrationInProgress != null) {
      return registrationInProgress(this);
    }
    return orElse();
  }
}

abstract class _$RegisterUserInProgress implements RegisterState {
  const factory _$RegisterUserInProgress() = _$_$RegisterUserInProgress;
}

/// @nodoc
abstract class _$$RegisterUserFailureCopyWith<$Res> {
  factory _$$RegisterUserFailureCopyWith(_$RegisterUserFailure value,
          $Res Function(_$RegisterUserFailure) then) =
      __$$RegisterUserFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$RegisterUserFailureCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$$RegisterUserFailureCopyWith<$Res> {
  __$$RegisterUserFailureCopyWithImpl(
      _$RegisterUserFailure _value, $Res Function(_$RegisterUserFailure) _then)
      : super(_value, (v) => _then(v as _$RegisterUserFailure));

  @override
  _$RegisterUserFailure get _value => super._value as _$RegisterUserFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$RegisterUserFailure(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$RegisterUserFailure implements _$RegisterUserFailure {
  const _$_$RegisterUserFailure({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'RegisterState.registrationFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$RegisterUserFailure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$$RegisterUserFailureCopyWith<_$RegisterUserFailure> get copyWith =>
      __$$RegisterUserFailureCopyWithImpl<_$RegisterUserFailure>(
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
    required TResult Function(_$RegisterInitial value) initial,
    required TResult Function(_$RegisterLoadInitialDataInProgress value)
        initialLoadInProgress,
    required TResult Function(_$RegisterLoadInitialDataFailure value)
        initialLoadFailure,
    required TResult Function(_$RegisterLoadInitialDataSuccess value)
        initialLoadSuccess,
    required TResult Function(_$RegisterUserInProgress value)
        registrationInProgress,
    required TResult Function(_$RegisterUserFailure value) registrationFailure,
    required TResult Function(_$RegisterUserSuccess value) registrationSuccess,
  }) {
    return registrationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$RegisterInitial value)? initial,
    TResult Function(_$RegisterLoadInitialDataInProgress value)?
        initialLoadInProgress,
    TResult Function(_$RegisterLoadInitialDataFailure value)?
        initialLoadFailure,
    TResult Function(_$RegisterLoadInitialDataSuccess value)?
        initialLoadSuccess,
    TResult Function(_$RegisterUserInProgress value)? registrationInProgress,
    TResult Function(_$RegisterUserFailure value)? registrationFailure,
    TResult Function(_$RegisterUserSuccess value)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (registrationFailure != null) {
      return registrationFailure(this);
    }
    return orElse();
  }
}

abstract class _$RegisterUserFailure implements RegisterState {
  const factory _$RegisterUserFailure({required String error}) =
      _$_$RegisterUserFailure;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$RegisterUserFailureCopyWith<_$RegisterUserFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterUserSuccessCopyWith<$Res> {
  factory _$$RegisterUserSuccessCopyWith(_$RegisterUserSuccess value,
          $Res Function(_$RegisterUserSuccess) then) =
      __$$RegisterUserSuccessCopyWithImpl<$Res>;
  $Res call({String userEmail});
}

/// @nodoc
class __$$RegisterUserSuccessCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$$RegisterUserSuccessCopyWith<$Res> {
  __$$RegisterUserSuccessCopyWithImpl(
      _$RegisterUserSuccess _value, $Res Function(_$RegisterUserSuccess) _then)
      : super(_value, (v) => _then(v as _$RegisterUserSuccess));

  @override
  _$RegisterUserSuccess get _value => super._value as _$RegisterUserSuccess;

  @override
  $Res call({
    Object? userEmail = freezed,
  }) {
    return _then(_$RegisterUserSuccess(
      userEmail: userEmail == freezed
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$RegisterUserSuccess implements _$RegisterUserSuccess {
  const _$_$RegisterUserSuccess({required this.userEmail});

  @override
  final String userEmail;

  @override
  String toString() {
    return 'RegisterState.registrationSuccess(userEmail: $userEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$RegisterUserSuccess &&
            (identical(other.userEmail, userEmail) ||
                const DeepCollectionEquality()
                    .equals(other.userEmail, userEmail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userEmail);

  @JsonKey(ignore: true)
  @override
  _$$RegisterUserSuccessCopyWith<_$RegisterUserSuccess> get copyWith =>
      __$$RegisterUserSuccessCopyWithImpl<_$RegisterUserSuccess>(
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
    required TResult Function(_$RegisterInitial value) initial,
    required TResult Function(_$RegisterLoadInitialDataInProgress value)
        initialLoadInProgress,
    required TResult Function(_$RegisterLoadInitialDataFailure value)
        initialLoadFailure,
    required TResult Function(_$RegisterLoadInitialDataSuccess value)
        initialLoadSuccess,
    required TResult Function(_$RegisterUserInProgress value)
        registrationInProgress,
    required TResult Function(_$RegisterUserFailure value) registrationFailure,
    required TResult Function(_$RegisterUserSuccess value) registrationSuccess,
  }) {
    return registrationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$RegisterInitial value)? initial,
    TResult Function(_$RegisterLoadInitialDataInProgress value)?
        initialLoadInProgress,
    TResult Function(_$RegisterLoadInitialDataFailure value)?
        initialLoadFailure,
    TResult Function(_$RegisterLoadInitialDataSuccess value)?
        initialLoadSuccess,
    TResult Function(_$RegisterUserInProgress value)? registrationInProgress,
    TResult Function(_$RegisterUserFailure value)? registrationFailure,
    TResult Function(_$RegisterUserSuccess value)? registrationSuccess,
    required TResult orElse(),
  }) {
    if (registrationSuccess != null) {
      return registrationSuccess(this);
    }
    return orElse();
  }
}

abstract class _$RegisterUserSuccess implements RegisterState {
  const factory _$RegisterUserSuccess({required String userEmail}) =
      _$_$RegisterUserSuccess;

  String get userEmail => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$RegisterUserSuccessCopyWith<_$RegisterUserSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
