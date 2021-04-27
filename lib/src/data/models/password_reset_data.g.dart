// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_reset_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PasswordResetData _$PasswordResetDataFromJson(Map<String, dynamic> json) {
  return PasswordResetData(
    answers:
        (json['answers'] as List<dynamic>?)?.map((e) => e as String).toList(),
    ci: json['ci'] as String?,
    newPassword: json['newPassword'] as String?,
    questions:
        (json['questions'] as List<dynamic>?)?.map((e) => e as String).toList(),
    email: json['email'] as String?,
  );
}

Map<String, dynamic> _$PasswordResetDataToJson(PasswordResetData instance) =>
    <String, dynamic>{
      'answers': instance.answers,
      'ci': instance.ci,
      'newPassword': instance.newPassword,
      'questions': instance.questions,
      'email': instance.email,
    };
