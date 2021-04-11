// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpData _$SignUpDataFromJson(Map<String, dynamic> json) {
  return SignUpData(
    answers:
        (json['answers'] as List<dynamic>?)?.map((e) => e as String).toList(),
    ci: json['ci'] as String?,
    password: json['password'] as String?,
    questions:
        (json['questions'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$SignUpDataToJson(SignUpData instance) =>
    <String, dynamic>{
      'answers': instance.answers,
      'ci': instance.ci,
      'password': instance.password,
      'questions': instance.questions,
    };
