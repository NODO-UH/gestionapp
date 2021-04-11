import 'package:gestionuh/src/data/models/base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'all_security_questions.g.dart';

@JsonSerializable(explicitToJson: true)
class AllSecurityQuestions extends BaseModel {
  List<String>? questions;

  AllSecurityQuestions({this.questions});

  static AllSecurityQuestions fromJson(Map<String, dynamic> json) =>
      _$AllSecurityQuestionsFromJson(json);

  Map<String, dynamic> toJson() => _$AllSecurityQuestionsToJson(this);
}
