// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passReset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PassReset _$PassResetFromJson(Map<String, dynamic> json) {
  return PassReset(
    json['oldPassword'] as String,
    json['newPassword'] as String,
  );
}

Map<String, dynamic> _$PassResetToJson(PassReset instance) => <String, dynamic>{
      'oldPassword': instance.oldPassword,
      'newPassword': instance.newPassword,
    };
