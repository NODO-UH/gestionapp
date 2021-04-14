import 'package:gestionuh/src/data/models/base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'security_questions.g.dart';

@JsonSerializable(explicitToJson: true)
class SecurityQuestions extends BaseModel {
  List<String>? questions;

  SecurityQuestions({this.questions});

  static SecurityQuestions fromJson(Map<String, dynamic> json) =>
      _$SecurityQuestionsFromJson(json);

  Map<String, dynamic> toJson() => _$SecurityQuestionsToJson(this);
}
