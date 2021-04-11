// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quota.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Quota _$QuotaFromJson(Map<String, dynamic> json) {
  return Quota(
    quota: json['quota'] as int?,
    bonus: json['bonus'] as int?,
    consumed: json['consumed'] as int?,
  );
}

Map<String, dynamic> _$QuotaToJson(Quota instance) => <String, dynamic>{
      'quota': instance.quota,
      'bonus': instance.bonus,
      'consumed': instance.consumed,
    };
