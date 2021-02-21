// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'quota_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<QuotaResponse> _$quotaResponseSerializer =
    new _$QuotaResponseSerializer();

class _$QuotaResponseSerializer implements StructuredSerializer<QuotaResponse> {
  @override
  final Iterable<Type> types = const [QuotaResponse, _$QuotaResponse];
  @override
  final String wireName = 'QuotaResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, QuotaResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.quota != null) {
      result
        ..add('quota')
        ..add(serializers.serialize(object.quota,
            specifiedType: const FullType(int)));
    }
    if (object.bonus != null) {
      result
        ..add('bonus')
        ..add(serializers.serialize(object.bonus,
            specifiedType: const FullType(int)));
    }
    if (object.consumed != null) {
      result
        ..add('consumed')
        ..add(serializers.serialize(object.consumed,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  QuotaResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuotaResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'quota':
          result.quota = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'bonus':
          result.bonus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'consumed':
          result.consumed = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$QuotaResponse extends QuotaResponse {
  @override
  final int quota;
  @override
  final int bonus;
  @override
  final int consumed;

  factory _$QuotaResponse([void Function(QuotaResponseBuilder) updates]) =>
      (new QuotaResponseBuilder()..update(updates)).build();

  _$QuotaResponse._({this.quota, this.bonus, this.consumed}) : super._();

  @override
  QuotaResponse rebuild(void Function(QuotaResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuotaResponseBuilder toBuilder() => new QuotaResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuotaResponse &&
        quota == other.quota &&
        bonus == other.bonus &&
        consumed == other.consumed;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, quota.hashCode), bonus.hashCode), consumed.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('QuotaResponse')
          ..add('quota', quota)
          ..add('bonus', bonus)
          ..add('consumed', consumed))
        .toString();
  }
}

class QuotaResponseBuilder
    implements Builder<QuotaResponse, QuotaResponseBuilder> {
  _$QuotaResponse _$v;

  int _quota;
  int get quota => _$this._quota;
  set quota(int quota) => _$this._quota = quota;

  int _bonus;
  int get bonus => _$this._bonus;
  set bonus(int bonus) => _$this._bonus = bonus;

  int _consumed;
  int get consumed => _$this._consumed;
  set consumed(int consumed) => _$this._consumed = consumed;

  QuotaResponseBuilder() {
    QuotaResponse._initializeBuilder(this);
  }

  QuotaResponseBuilder get _$this {
    if (_$v != null) {
      _quota = _$v.quota;
      _bonus = _$v.bonus;
      _consumed = _$v.consumed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuotaResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$QuotaResponse;
  }

  @override
  void update(void Function(QuotaResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$QuotaResponse build() {
    final _$result = _$v ??
        new _$QuotaResponse._(quota: quota, bonus: bonus, consumed: consumed);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
