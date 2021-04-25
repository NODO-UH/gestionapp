// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'recover_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RecoverPasswordEventTearOff {
  const _$RecoverPasswordEventTearOff();

  _CISubmit ciSubmit(TextEditingController ci) {
    return _CISubmit(
      ci,
    );
  }

  _FinalSubmit finalSubmit(String ci, List<String> questions,
      List<TextEditingController> answers, TextEditingController password) {
    return _FinalSubmit(
      ci,
      questions,
      answers,
      password,
    );
  }
}

/// @nodoc
const $RecoverPasswordEvent = _$RecoverPasswordEventTearOff();

/// @nodoc
mixin _$RecoverPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextEditingController ci) ciSubmit,
    required TResult Function(String ci, List<String> questions,
            List<TextEditingController> answers, TextEditingController password)
        finalSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextEditingController ci)? ciSubmit,
    TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password)?
        finalSubmit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CISubmit value) ciSubmit,
    required TResult Function(_FinalSubmit value) finalSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CISubmit value)? ciSubmit,
    TResult Function(_FinalSubmit value)? finalSubmit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecoverPasswordEventCopyWith<$Res> {
  factory $RecoverPasswordEventCopyWith(RecoverPasswordEvent value,
          $Res Function(RecoverPasswordEvent) then) =
      _$RecoverPasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecoverPasswordEventCopyWithImpl<$Res>
    implements $RecoverPasswordEventCopyWith<$Res> {
  _$RecoverPasswordEventCopyWithImpl(this._value, this._then);

  final RecoverPasswordEvent _value;
  // ignore: unused_field
  final $Res Function(RecoverPasswordEvent) _then;
}

/// @nodoc
abstract class _$CISubmitCopyWith<$Res> {
  factory _$CISubmitCopyWith(_CISubmit value, $Res Function(_CISubmit) then) =
      __$CISubmitCopyWithImpl<$Res>;
  $Res call({TextEditingController ci});
}

/// @nodoc
class __$CISubmitCopyWithImpl<$Res>
    extends _$RecoverPasswordEventCopyWithImpl<$Res>
    implements _$CISubmitCopyWith<$Res> {
  __$CISubmitCopyWithImpl(_CISubmit _value, $Res Function(_CISubmit) _then)
      : super(_value, (v) => _then(v as _CISubmit));

  @override
  _CISubmit get _value => super._value as _CISubmit;

  @override
  $Res call({
    Object? ci = freezed,
  }) {
    return _then(_CISubmit(
      ci == freezed
          ? _value.ci
          : ci // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$_CISubmit implements _CISubmit {
  const _$_CISubmit(this.ci);

  @override
  final TextEditingController ci;

  @override
  String toString() {
    return 'RecoverPasswordEvent.ciSubmit(ci: $ci)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CISubmit &&
            (identical(other.ci, ci) ||
                const DeepCollectionEquality().equals(other.ci, ci)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ci);

  @JsonKey(ignore: true)
  @override
  _$CISubmitCopyWith<_CISubmit> get copyWith =>
      __$CISubmitCopyWithImpl<_CISubmit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextEditingController ci) ciSubmit,
    required TResult Function(String ci, List<String> questions,
            List<TextEditingController> answers, TextEditingController password)
        finalSubmit,
  }) {
    return ciSubmit(ci);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextEditingController ci)? ciSubmit,
    TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password)?
        finalSubmit,
    required TResult orElse(),
  }) {
    if (ciSubmit != null) {
      return ciSubmit(ci);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CISubmit value) ciSubmit,
    required TResult Function(_FinalSubmit value) finalSubmit,
  }) {
    return ciSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CISubmit value)? ciSubmit,
    TResult Function(_FinalSubmit value)? finalSubmit,
    required TResult orElse(),
  }) {
    if (ciSubmit != null) {
      return ciSubmit(this);
    }
    return orElse();
  }
}

abstract class _CISubmit implements RecoverPasswordEvent {
  const factory _CISubmit(TextEditingController ci) = _$_CISubmit;

  TextEditingController get ci => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CISubmitCopyWith<_CISubmit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FinalSubmitCopyWith<$Res> {
  factory _$FinalSubmitCopyWith(
          _FinalSubmit value, $Res Function(_FinalSubmit) then) =
      __$FinalSubmitCopyWithImpl<$Res>;
  $Res call(
      {String ci,
      List<String> questions,
      List<TextEditingController> answers,
      TextEditingController password});
}

/// @nodoc
class __$FinalSubmitCopyWithImpl<$Res>
    extends _$RecoverPasswordEventCopyWithImpl<$Res>
    implements _$FinalSubmitCopyWith<$Res> {
  __$FinalSubmitCopyWithImpl(
      _FinalSubmit _value, $Res Function(_FinalSubmit) _then)
      : super(_value, (v) => _then(v as _FinalSubmit));

  @override
  _FinalSubmit get _value => super._value as _FinalSubmit;

  @override
  $Res call({
    Object? ci = freezed,
    Object? questions = freezed,
    Object? answers = freezed,
    Object? password = freezed,
  }) {
    return _then(_FinalSubmit(
      ci == freezed
          ? _value.ci
          : ci // ignore: cast_nullable_to_non_nullable
              as String,
      questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<TextEditingController>,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$_FinalSubmit implements _FinalSubmit {
  const _$_FinalSubmit(this.ci, this.questions, this.answers, this.password);

  @override
  final String ci;
  @override
  final List<String> questions;
  @override
  final List<TextEditingController> answers;
  @override
  final TextEditingController password;

  @override
  String toString() {
    return 'RecoverPasswordEvent.finalSubmit(ci: $ci, questions: $questions, answers: $answers, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FinalSubmit &&
            (identical(other.ci, ci) ||
                const DeepCollectionEquality().equals(other.ci, ci)) &&
            (identical(other.questions, questions) ||
                const DeepCollectionEquality()
                    .equals(other.questions, questions)) &&
            (identical(other.answers, answers) ||
                const DeepCollectionEquality()
                    .equals(other.answers, answers)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ci) ^
      const DeepCollectionEquality().hash(questions) ^
      const DeepCollectionEquality().hash(answers) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$FinalSubmitCopyWith<_FinalSubmit> get copyWith =>
      __$FinalSubmitCopyWithImpl<_FinalSubmit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextEditingController ci) ciSubmit,
    required TResult Function(String ci, List<String> questions,
            List<TextEditingController> answers, TextEditingController password)
        finalSubmit,
  }) {
    return finalSubmit(ci, questions, answers, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextEditingController ci)? ciSubmit,
    TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password)?
        finalSubmit,
    required TResult orElse(),
  }) {
    if (finalSubmit != null) {
      return finalSubmit(ci, questions, answers, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CISubmit value) ciSubmit,
    required TResult Function(_FinalSubmit value) finalSubmit,
  }) {
    return finalSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CISubmit value)? ciSubmit,
    TResult Function(_FinalSubmit value)? finalSubmit,
    required TResult orElse(),
  }) {
    if (finalSubmit != null) {
      return finalSubmit(this);
    }
    return orElse();
  }
}

abstract class _FinalSubmit implements RecoverPasswordEvent {
  const factory _FinalSubmit(
      String ci,
      List<String> questions,
      List<TextEditingController> answers,
      TextEditingController password) = _$_FinalSubmit;

  String get ci => throw _privateConstructorUsedError;
  List<String> get questions => throw _privateConstructorUsedError;
  List<TextEditingController> get answers => throw _privateConstructorUsedError;
  TextEditingController get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FinalSubmitCopyWith<_FinalSubmit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RecoverPasswordStateTearOff {
  const _$RecoverPasswordStateTearOff();

  _Initial initial(TextEditingController ci) {
    return _Initial(
      ci,
    );
  }

  _CILoading ciLoading(TextEditingController ci) {
    return _CILoading(
      ci,
    );
  }

  _CIError ciError(TextEditingController ci, String error) {
    return _CIError(
      ci,
      error,
    );
  }

  _Questions questions(String ci, List<String> questions,
      List<TextEditingController> answers, TextEditingController password) {
    return _Questions(
      ci,
      questions,
      answers,
      password,
    );
  }

  _QuestionsLoading questionsLoading(String ci, List<String> questions,
      List<TextEditingController> answers, TextEditingController password) {
    return _QuestionsLoading(
      ci,
      questions,
      answers,
      password,
    );
  }

  _QuestionsError questionsError(
      String ci,
      List<String> questions,
      List<TextEditingController> answers,
      TextEditingController password,
      String error) {
    return _QuestionsError(
      ci,
      questions,
      answers,
      password,
      error,
    );
  }

  _Success success(String userId) {
    return _Success(
      userId,
    );
  }
}

/// @nodoc
const $RecoverPasswordState = _$RecoverPasswordStateTearOff();

/// @nodoc
mixin _$RecoverPasswordState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextEditingController ci) initial,
    required TResult Function(TextEditingController ci) ciLoading,
    required TResult Function(TextEditingController ci, String error) ciError,
    required TResult Function(String ci, List<String> questions,
            List<TextEditingController> answers, TextEditingController password)
        questions,
    required TResult Function(String ci, List<String> questions,
            List<TextEditingController> answers, TextEditingController password)
        questionsLoading,
    required TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password,
            String error)
        questionsError,
    required TResult Function(String userId) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextEditingController ci)? initial,
    TResult Function(TextEditingController ci)? ciLoading,
    TResult Function(TextEditingController ci, String error)? ciError,
    TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password)?
        questions,
    TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password)?
        questionsLoading,
    TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password,
            String error)?
        questionsError,
    TResult Function(String userId)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CILoading value) ciLoading,
    required TResult Function(_CIError value) ciError,
    required TResult Function(_Questions value) questions,
    required TResult Function(_QuestionsLoading value) questionsLoading,
    required TResult Function(_QuestionsError value) questionsError,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CILoading value)? ciLoading,
    TResult Function(_CIError value)? ciError,
    TResult Function(_Questions value)? questions,
    TResult Function(_QuestionsLoading value)? questionsLoading,
    TResult Function(_QuestionsError value)? questionsError,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecoverPasswordStateCopyWith<$Res> {
  factory $RecoverPasswordStateCopyWith(RecoverPasswordState value,
          $Res Function(RecoverPasswordState) then) =
      _$RecoverPasswordStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecoverPasswordStateCopyWithImpl<$Res>
    implements $RecoverPasswordStateCopyWith<$Res> {
  _$RecoverPasswordStateCopyWithImpl(this._value, this._then);

  final RecoverPasswordState _value;
  // ignore: unused_field
  final $Res Function(RecoverPasswordState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  $Res call({TextEditingController ci});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$RecoverPasswordStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? ci = freezed,
  }) {
    return _then(_Initial(
      ci == freezed
          ? _value.ci
          : ci // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(this.ci);

  @override
  final TextEditingController ci;

  @override
  String toString() {
    return 'RecoverPasswordState.initial(ci: $ci)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.ci, ci) ||
                const DeepCollectionEquality().equals(other.ci, ci)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ci);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextEditingController ci) initial,
    required TResult Function(TextEditingController ci) ciLoading,
    required TResult Function(TextEditingController ci, String error) ciError,
    required TResult Function(String ci, List<String> questions,
            List<TextEditingController> answers, TextEditingController password)
        questions,
    required TResult Function(String ci, List<String> questions,
            List<TextEditingController> answers, TextEditingController password)
        questionsLoading,
    required TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password,
            String error)
        questionsError,
    required TResult Function(String userId) success,
  }) {
    return initial(ci);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextEditingController ci)? initial,
    TResult Function(TextEditingController ci)? ciLoading,
    TResult Function(TextEditingController ci, String error)? ciError,
    TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password)?
        questions,
    TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password)?
        questionsLoading,
    TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password,
            String error)?
        questionsError,
    TResult Function(String userId)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(ci);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CILoading value) ciLoading,
    required TResult Function(_CIError value) ciError,
    required TResult Function(_Questions value) questions,
    required TResult Function(_QuestionsLoading value) questionsLoading,
    required TResult Function(_QuestionsError value) questionsError,
    required TResult Function(_Success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CILoading value)? ciLoading,
    TResult Function(_CIError value)? ciError,
    TResult Function(_Questions value)? questions,
    TResult Function(_QuestionsLoading value)? questionsLoading,
    TResult Function(_QuestionsError value)? questionsError,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RecoverPasswordState {
  const factory _Initial(TextEditingController ci) = _$_Initial;

  TextEditingController get ci => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CILoadingCopyWith<$Res> {
  factory _$CILoadingCopyWith(
          _CILoading value, $Res Function(_CILoading) then) =
      __$CILoadingCopyWithImpl<$Res>;
  $Res call({TextEditingController ci});
}

/// @nodoc
class __$CILoadingCopyWithImpl<$Res>
    extends _$RecoverPasswordStateCopyWithImpl<$Res>
    implements _$CILoadingCopyWith<$Res> {
  __$CILoadingCopyWithImpl(_CILoading _value, $Res Function(_CILoading) _then)
      : super(_value, (v) => _then(v as _CILoading));

  @override
  _CILoading get _value => super._value as _CILoading;

  @override
  $Res call({
    Object? ci = freezed,
  }) {
    return _then(_CILoading(
      ci == freezed
          ? _value.ci
          : ci // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$_CILoading implements _CILoading {
  const _$_CILoading(this.ci);

  @override
  final TextEditingController ci;

  @override
  String toString() {
    return 'RecoverPasswordState.ciLoading(ci: $ci)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CILoading &&
            (identical(other.ci, ci) ||
                const DeepCollectionEquality().equals(other.ci, ci)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ci);

  @JsonKey(ignore: true)
  @override
  _$CILoadingCopyWith<_CILoading> get copyWith =>
      __$CILoadingCopyWithImpl<_CILoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextEditingController ci) initial,
    required TResult Function(TextEditingController ci) ciLoading,
    required TResult Function(TextEditingController ci, String error) ciError,
    required TResult Function(String ci, List<String> questions,
            List<TextEditingController> answers, TextEditingController password)
        questions,
    required TResult Function(String ci, List<String> questions,
            List<TextEditingController> answers, TextEditingController password)
        questionsLoading,
    required TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password,
            String error)
        questionsError,
    required TResult Function(String userId) success,
  }) {
    return ciLoading(ci);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextEditingController ci)? initial,
    TResult Function(TextEditingController ci)? ciLoading,
    TResult Function(TextEditingController ci, String error)? ciError,
    TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password)?
        questions,
    TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password)?
        questionsLoading,
    TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password,
            String error)?
        questionsError,
    TResult Function(String userId)? success,
    required TResult orElse(),
  }) {
    if (ciLoading != null) {
      return ciLoading(ci);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CILoading value) ciLoading,
    required TResult Function(_CIError value) ciError,
    required TResult Function(_Questions value) questions,
    required TResult Function(_QuestionsLoading value) questionsLoading,
    required TResult Function(_QuestionsError value) questionsError,
    required TResult Function(_Success value) success,
  }) {
    return ciLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CILoading value)? ciLoading,
    TResult Function(_CIError value)? ciError,
    TResult Function(_Questions value)? questions,
    TResult Function(_QuestionsLoading value)? questionsLoading,
    TResult Function(_QuestionsError value)? questionsError,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (ciLoading != null) {
      return ciLoading(this);
    }
    return orElse();
  }
}

abstract class _CILoading implements RecoverPasswordState {
  const factory _CILoading(TextEditingController ci) = _$_CILoading;

  TextEditingController get ci => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CILoadingCopyWith<_CILoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CIErrorCopyWith<$Res> {
  factory _$CIErrorCopyWith(_CIError value, $Res Function(_CIError) then) =
      __$CIErrorCopyWithImpl<$Res>;
  $Res call({TextEditingController ci, String error});
}

/// @nodoc
class __$CIErrorCopyWithImpl<$Res>
    extends _$RecoverPasswordStateCopyWithImpl<$Res>
    implements _$CIErrorCopyWith<$Res> {
  __$CIErrorCopyWithImpl(_CIError _value, $Res Function(_CIError) _then)
      : super(_value, (v) => _then(v as _CIError));

  @override
  _CIError get _value => super._value as _CIError;

  @override
  $Res call({
    Object? ci = freezed,
    Object? error = freezed,
  }) {
    return _then(_CIError(
      ci == freezed
          ? _value.ci
          : ci // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CIError implements _CIError {
  const _$_CIError(this.ci, this.error);

  @override
  final TextEditingController ci;
  @override
  final String error;

  @override
  String toString() {
    return 'RecoverPasswordState.ciError(ci: $ci, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CIError &&
            (identical(other.ci, ci) ||
                const DeepCollectionEquality().equals(other.ci, ci)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ci) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$CIErrorCopyWith<_CIError> get copyWith =>
      __$CIErrorCopyWithImpl<_CIError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextEditingController ci) initial,
    required TResult Function(TextEditingController ci) ciLoading,
    required TResult Function(TextEditingController ci, String error) ciError,
    required TResult Function(String ci, List<String> questions,
            List<TextEditingController> answers, TextEditingController password)
        questions,
    required TResult Function(String ci, List<String> questions,
            List<TextEditingController> answers, TextEditingController password)
        questionsLoading,
    required TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password,
            String error)
        questionsError,
    required TResult Function(String userId) success,
  }) {
    return ciError(ci, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextEditingController ci)? initial,
    TResult Function(TextEditingController ci)? ciLoading,
    TResult Function(TextEditingController ci, String error)? ciError,
    TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password)?
        questions,
    TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password)?
        questionsLoading,
    TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password,
            String error)?
        questionsError,
    TResult Function(String userId)? success,
    required TResult orElse(),
  }) {
    if (ciError != null) {
      return ciError(ci, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CILoading value) ciLoading,
    required TResult Function(_CIError value) ciError,
    required TResult Function(_Questions value) questions,
    required TResult Function(_QuestionsLoading value) questionsLoading,
    required TResult Function(_QuestionsError value) questionsError,
    required TResult Function(_Success value) success,
  }) {
    return ciError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CILoading value)? ciLoading,
    TResult Function(_CIError value)? ciError,
    TResult Function(_Questions value)? questions,
    TResult Function(_QuestionsLoading value)? questionsLoading,
    TResult Function(_QuestionsError value)? questionsError,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (ciError != null) {
      return ciError(this);
    }
    return orElse();
  }
}

abstract class _CIError implements RecoverPasswordState {
  const factory _CIError(TextEditingController ci, String error) = _$_CIError;

  TextEditingController get ci => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CIErrorCopyWith<_CIError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QuestionsCopyWith<$Res> {
  factory _$QuestionsCopyWith(
          _Questions value, $Res Function(_Questions) then) =
      __$QuestionsCopyWithImpl<$Res>;
  $Res call(
      {String ci,
      List<String> questions,
      List<TextEditingController> answers,
      TextEditingController password});
}

/// @nodoc
class __$QuestionsCopyWithImpl<$Res>
    extends _$RecoverPasswordStateCopyWithImpl<$Res>
    implements _$QuestionsCopyWith<$Res> {
  __$QuestionsCopyWithImpl(_Questions _value, $Res Function(_Questions) _then)
      : super(_value, (v) => _then(v as _Questions));

  @override
  _Questions get _value => super._value as _Questions;

  @override
  $Res call({
    Object? ci = freezed,
    Object? questions = freezed,
    Object? answers = freezed,
    Object? password = freezed,
  }) {
    return _then(_Questions(
      ci == freezed
          ? _value.ci
          : ci // ignore: cast_nullable_to_non_nullable
              as String,
      questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<TextEditingController>,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$_Questions implements _Questions {
  const _$_Questions(this.ci, this.questions, this.answers, this.password);

  @override
  final String ci;
  @override
  final List<String> questions;
  @override
  final List<TextEditingController> answers;
  @override
  final TextEditingController password;

  @override
  String toString() {
    return 'RecoverPasswordState.questions(ci: $ci, questions: $questions, answers: $answers, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Questions &&
            (identical(other.ci, ci) ||
                const DeepCollectionEquality().equals(other.ci, ci)) &&
            (identical(other.questions, questions) ||
                const DeepCollectionEquality()
                    .equals(other.questions, questions)) &&
            (identical(other.answers, answers) ||
                const DeepCollectionEquality()
                    .equals(other.answers, answers)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ci) ^
      const DeepCollectionEquality().hash(questions) ^
      const DeepCollectionEquality().hash(answers) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$QuestionsCopyWith<_Questions> get copyWith =>
      __$QuestionsCopyWithImpl<_Questions>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextEditingController ci) initial,
    required TResult Function(TextEditingController ci) ciLoading,
    required TResult Function(TextEditingController ci, String error) ciError,
    required TResult Function(String ci, List<String> questions,
            List<TextEditingController> answers, TextEditingController password)
        questions,
    required TResult Function(String ci, List<String> questions,
            List<TextEditingController> answers, TextEditingController password)
        questionsLoading,
    required TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password,
            String error)
        questionsError,
    required TResult Function(String userId) success,
  }) {
    return questions(ci, this.questions, answers, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextEditingController ci)? initial,
    TResult Function(TextEditingController ci)? ciLoading,
    TResult Function(TextEditingController ci, String error)? ciError,
    TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password)?
        questions,
    TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password)?
        questionsLoading,
    TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password,
            String error)?
        questionsError,
    TResult Function(String userId)? success,
    required TResult orElse(),
  }) {
    if (questions != null) {
      return questions(ci, this.questions, answers, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CILoading value) ciLoading,
    required TResult Function(_CIError value) ciError,
    required TResult Function(_Questions value) questions,
    required TResult Function(_QuestionsLoading value) questionsLoading,
    required TResult Function(_QuestionsError value) questionsError,
    required TResult Function(_Success value) success,
  }) {
    return questions(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CILoading value)? ciLoading,
    TResult Function(_CIError value)? ciError,
    TResult Function(_Questions value)? questions,
    TResult Function(_QuestionsLoading value)? questionsLoading,
    TResult Function(_QuestionsError value)? questionsError,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (questions != null) {
      return questions(this);
    }
    return orElse();
  }
}

abstract class _Questions implements RecoverPasswordState {
  const factory _Questions(
      String ci,
      List<String> questions,
      List<TextEditingController> answers,
      TextEditingController password) = _$_Questions;

  String get ci => throw _privateConstructorUsedError;
  List<String> get questions => throw _privateConstructorUsedError;
  List<TextEditingController> get answers => throw _privateConstructorUsedError;
  TextEditingController get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$QuestionsCopyWith<_Questions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QuestionsLoadingCopyWith<$Res> {
  factory _$QuestionsLoadingCopyWith(
          _QuestionsLoading value, $Res Function(_QuestionsLoading) then) =
      __$QuestionsLoadingCopyWithImpl<$Res>;
  $Res call(
      {String ci,
      List<String> questions,
      List<TextEditingController> answers,
      TextEditingController password});
}

/// @nodoc
class __$QuestionsLoadingCopyWithImpl<$Res>
    extends _$RecoverPasswordStateCopyWithImpl<$Res>
    implements _$QuestionsLoadingCopyWith<$Res> {
  __$QuestionsLoadingCopyWithImpl(
      _QuestionsLoading _value, $Res Function(_QuestionsLoading) _then)
      : super(_value, (v) => _then(v as _QuestionsLoading));

  @override
  _QuestionsLoading get _value => super._value as _QuestionsLoading;

  @override
  $Res call({
    Object? ci = freezed,
    Object? questions = freezed,
    Object? answers = freezed,
    Object? password = freezed,
  }) {
    return _then(_QuestionsLoading(
      ci == freezed
          ? _value.ci
          : ci // ignore: cast_nullable_to_non_nullable
              as String,
      questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<TextEditingController>,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$_QuestionsLoading implements _QuestionsLoading {
  const _$_QuestionsLoading(
      this.ci, this.questions, this.answers, this.password);

  @override
  final String ci;
  @override
  final List<String> questions;
  @override
  final List<TextEditingController> answers;
  @override
  final TextEditingController password;

  @override
  String toString() {
    return 'RecoverPasswordState.questionsLoading(ci: $ci, questions: $questions, answers: $answers, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuestionsLoading &&
            (identical(other.ci, ci) ||
                const DeepCollectionEquality().equals(other.ci, ci)) &&
            (identical(other.questions, questions) ||
                const DeepCollectionEquality()
                    .equals(other.questions, questions)) &&
            (identical(other.answers, answers) ||
                const DeepCollectionEquality()
                    .equals(other.answers, answers)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ci) ^
      const DeepCollectionEquality().hash(questions) ^
      const DeepCollectionEquality().hash(answers) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$QuestionsLoadingCopyWith<_QuestionsLoading> get copyWith =>
      __$QuestionsLoadingCopyWithImpl<_QuestionsLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextEditingController ci) initial,
    required TResult Function(TextEditingController ci) ciLoading,
    required TResult Function(TextEditingController ci, String error) ciError,
    required TResult Function(String ci, List<String> questions,
            List<TextEditingController> answers, TextEditingController password)
        questions,
    required TResult Function(String ci, List<String> questions,
            List<TextEditingController> answers, TextEditingController password)
        questionsLoading,
    required TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password,
            String error)
        questionsError,
    required TResult Function(String userId) success,
  }) {
    return questionsLoading(ci, this.questions, answers, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextEditingController ci)? initial,
    TResult Function(TextEditingController ci)? ciLoading,
    TResult Function(TextEditingController ci, String error)? ciError,
    TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password)?
        questions,
    TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password)?
        questionsLoading,
    TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password,
            String error)?
        questionsError,
    TResult Function(String userId)? success,
    required TResult orElse(),
  }) {
    if (questionsLoading != null) {
      return questionsLoading(ci, this.questions, answers, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CILoading value) ciLoading,
    required TResult Function(_CIError value) ciError,
    required TResult Function(_Questions value) questions,
    required TResult Function(_QuestionsLoading value) questionsLoading,
    required TResult Function(_QuestionsError value) questionsError,
    required TResult Function(_Success value) success,
  }) {
    return questionsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CILoading value)? ciLoading,
    TResult Function(_CIError value)? ciError,
    TResult Function(_Questions value)? questions,
    TResult Function(_QuestionsLoading value)? questionsLoading,
    TResult Function(_QuestionsError value)? questionsError,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (questionsLoading != null) {
      return questionsLoading(this);
    }
    return orElse();
  }
}

abstract class _QuestionsLoading implements RecoverPasswordState {
  const factory _QuestionsLoading(
      String ci,
      List<String> questions,
      List<TextEditingController> answers,
      TextEditingController password) = _$_QuestionsLoading;

  String get ci => throw _privateConstructorUsedError;
  List<String> get questions => throw _privateConstructorUsedError;
  List<TextEditingController> get answers => throw _privateConstructorUsedError;
  TextEditingController get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$QuestionsLoadingCopyWith<_QuestionsLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QuestionsErrorCopyWith<$Res> {
  factory _$QuestionsErrorCopyWith(
          _QuestionsError value, $Res Function(_QuestionsError) then) =
      __$QuestionsErrorCopyWithImpl<$Res>;
  $Res call(
      {String ci,
      List<String> questions,
      List<TextEditingController> answers,
      TextEditingController password,
      String error});
}

/// @nodoc
class __$QuestionsErrorCopyWithImpl<$Res>
    extends _$RecoverPasswordStateCopyWithImpl<$Res>
    implements _$QuestionsErrorCopyWith<$Res> {
  __$QuestionsErrorCopyWithImpl(
      _QuestionsError _value, $Res Function(_QuestionsError) _then)
      : super(_value, (v) => _then(v as _QuestionsError));

  @override
  _QuestionsError get _value => super._value as _QuestionsError;

  @override
  $Res call({
    Object? ci = freezed,
    Object? questions = freezed,
    Object? answers = freezed,
    Object? password = freezed,
    Object? error = freezed,
  }) {
    return _then(_QuestionsError(
      ci == freezed
          ? _value.ci
          : ci // ignore: cast_nullable_to_non_nullable
              as String,
      questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<TextEditingController>,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QuestionsError implements _QuestionsError {
  const _$_QuestionsError(
      this.ci, this.questions, this.answers, this.password, this.error);

  @override
  final String ci;
  @override
  final List<String> questions;
  @override
  final List<TextEditingController> answers;
  @override
  final TextEditingController password;
  @override
  final String error;

  @override
  String toString() {
    return 'RecoverPasswordState.questionsError(ci: $ci, questions: $questions, answers: $answers, password: $password, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuestionsError &&
            (identical(other.ci, ci) ||
                const DeepCollectionEquality().equals(other.ci, ci)) &&
            (identical(other.questions, questions) ||
                const DeepCollectionEquality()
                    .equals(other.questions, questions)) &&
            (identical(other.answers, answers) ||
                const DeepCollectionEquality()
                    .equals(other.answers, answers)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ci) ^
      const DeepCollectionEquality().hash(questions) ^
      const DeepCollectionEquality().hash(answers) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$QuestionsErrorCopyWith<_QuestionsError> get copyWith =>
      __$QuestionsErrorCopyWithImpl<_QuestionsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextEditingController ci) initial,
    required TResult Function(TextEditingController ci) ciLoading,
    required TResult Function(TextEditingController ci, String error) ciError,
    required TResult Function(String ci, List<String> questions,
            List<TextEditingController> answers, TextEditingController password)
        questions,
    required TResult Function(String ci, List<String> questions,
            List<TextEditingController> answers, TextEditingController password)
        questionsLoading,
    required TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password,
            String error)
        questionsError,
    required TResult Function(String userId) success,
  }) {
    return questionsError(ci, this.questions, answers, password, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextEditingController ci)? initial,
    TResult Function(TextEditingController ci)? ciLoading,
    TResult Function(TextEditingController ci, String error)? ciError,
    TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password)?
        questions,
    TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password)?
        questionsLoading,
    TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password,
            String error)?
        questionsError,
    TResult Function(String userId)? success,
    required TResult orElse(),
  }) {
    if (questionsError != null) {
      return questionsError(ci, this.questions, answers, password, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CILoading value) ciLoading,
    required TResult Function(_CIError value) ciError,
    required TResult Function(_Questions value) questions,
    required TResult Function(_QuestionsLoading value) questionsLoading,
    required TResult Function(_QuestionsError value) questionsError,
    required TResult Function(_Success value) success,
  }) {
    return questionsError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CILoading value)? ciLoading,
    TResult Function(_CIError value)? ciError,
    TResult Function(_Questions value)? questions,
    TResult Function(_QuestionsLoading value)? questionsLoading,
    TResult Function(_QuestionsError value)? questionsError,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (questionsError != null) {
      return questionsError(this);
    }
    return orElse();
  }
}

abstract class _QuestionsError implements RecoverPasswordState {
  const factory _QuestionsError(
      String ci,
      List<String> questions,
      List<TextEditingController> answers,
      TextEditingController password,
      String error) = _$_QuestionsError;

  String get ci => throw _privateConstructorUsedError;
  List<String> get questions => throw _privateConstructorUsedError;
  List<TextEditingController> get answers => throw _privateConstructorUsedError;
  TextEditingController get password => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$QuestionsErrorCopyWith<_QuestionsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    extends _$RecoverPasswordStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_Success(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'RecoverPasswordState.success(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextEditingController ci) initial,
    required TResult Function(TextEditingController ci) ciLoading,
    required TResult Function(TextEditingController ci, String error) ciError,
    required TResult Function(String ci, List<String> questions,
            List<TextEditingController> answers, TextEditingController password)
        questions,
    required TResult Function(String ci, List<String> questions,
            List<TextEditingController> answers, TextEditingController password)
        questionsLoading,
    required TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password,
            String error)
        questionsError,
    required TResult Function(String userId) success,
  }) {
    return success(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextEditingController ci)? initial,
    TResult Function(TextEditingController ci)? ciLoading,
    TResult Function(TextEditingController ci, String error)? ciError,
    TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password)?
        questions,
    TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password)?
        questionsLoading,
    TResult Function(
            String ci,
            List<String> questions,
            List<TextEditingController> answers,
            TextEditingController password,
            String error)?
        questionsError,
    TResult Function(String userId)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CILoading value) ciLoading,
    required TResult Function(_CIError value) ciError,
    required TResult Function(_Questions value) questions,
    required TResult Function(_QuestionsLoading value) questionsLoading,
    required TResult Function(_QuestionsError value) questionsError,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CILoading value)? ciLoading,
    TResult Function(_CIError value)? ciError,
    TResult Function(_Questions value)? questions,
    TResult Function(_QuestionsLoading value)? questionsLoading,
    TResult Function(_QuestionsError value)? questionsError,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements RecoverPasswordState {
  const factory _Success(String userId) = _$_Success;

  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith =>
      throw _privateConstructorUsedError;
}
