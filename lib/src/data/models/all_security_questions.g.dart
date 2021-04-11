// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_security_questions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllSecurityQuestions _$AllSecurityQuestionsFromJson(Map<String, dynamic> json) {
  return AllSecurityQuestions(
    questions:
        (json['questions'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$AllSecurityQuestionsToJson(
        AllSecurityQuestions instance) =>
    <String, dynamic>{
      'questions': instance.questions,
    };
