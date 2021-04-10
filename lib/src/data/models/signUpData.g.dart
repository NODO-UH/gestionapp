// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signUpData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpData _$SignUpDataFromJson(Map<String, dynamic> json) {
  return SignUpData(
    answers: (json['answers'] as List)?.map((e) => e as String)?.toList(),
    ci: json['ci'] as String,
    password: json['password'] as String,
    questions: (json['questions'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$SignUpDataToJson(SignUpData instance) =>
    <String, dynamic>{
      'answers': instance.answers,
      'ci': instance.ci,
      'password': instance.password,
      'questions': instance.questions,
    };
