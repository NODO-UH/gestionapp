// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security_questions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SecurityQuestions _$SecurityQuestionsFromJson(Map<String, dynamic> json) {
  return SecurityQuestions(
    questions:
        (json['questions'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$SecurityQuestionsToJson(SecurityQuestions instance) =>
    <String, dynamic>{
      'questions': instance.questions,
    };
