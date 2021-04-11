// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mailQuota.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MailQuota _$MailQuotaFromJson(Map<String, dynamic> json) {
  return MailQuota(
    quota: json['quota'] as int?,
    consumed: json['consumed'] as int?,
  );
}

Map<String, dynamic> _$MailQuotaToJson(MailQuota instance) => <String, dynamic>{
      'quota': instance.quota,
      'consumed': instance.consumed,
    };
