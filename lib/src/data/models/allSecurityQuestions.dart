import 'package:gestionuh/src/data/models/BaseModel.dart';
import 'package:json_annotation/json_annotation.dart';

part 'allSecurityQuestions.g.dart';

@JsonSerializable()
class AllSecurityQuestions extends BaseModel {
  List<String> questions;

  AllSecurityQuestions({this.questions});

  factory AllSecurityQuestions.fromJson(Map<String, dynamic> json) =>
      _$AllSecurityQuestionsFromJson(json);

  Map<String, dynamic> toJson() => _$AllSecurityQuestionsToJson(this);
}
