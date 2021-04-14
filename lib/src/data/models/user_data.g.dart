// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return UserData(
    careerName: json['careerName'] as String?,
    email: json['email'] as String?,
    hasCloud: json['hasCloud'] as bool?,
    hasEmail: json['hasEmail'] as bool?,
    hasInternet: json['hasInternet'] as bool?,
    name: json['name'] as String?,
    objectClass: json['objectClass'] as String?,
    position: json['position'] as String?,
  );
}

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'careerName': instance.careerName,
      'email': instance.email,
      'hasCloud': instance.hasCloud,
      'hasEmail': instance.hasEmail,
      'hasInternet': instance.hasInternet,
      'name': instance.name,
      'objectClass': instance.objectClass,
      'position': instance.position,
    };
