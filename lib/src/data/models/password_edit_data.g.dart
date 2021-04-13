// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_edit_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PasswordEditData _$PasswordEditDataFromJson(Map<String, dynamic> json) {
  return PasswordEditData(
    answers:
        (json['answers'] as List<dynamic>?)?.map((e) => e as String).toList(),
    ci: json['ci'] as String?,
    password: json['password'] as String?,
    questions:
        (json['questions'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$PasswordEditDataToJson(PasswordEditData instance) =>
    <String, dynamic>{
      'answers': instance.answers,
      'ci': instance.ci,
      'password': instance.password,
      'questions': instance.questions,
    };
