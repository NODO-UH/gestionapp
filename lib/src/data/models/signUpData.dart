import 'package:gestionuh/src/data/models/BaseModel.dart';
import 'package:json_annotation/json_annotation.dart';

part 'signUpData.g.dart';

@JsonSerializable()
class SignUpData extends BaseModel {
  List<String> answers;
  String ci;
  String password;
  List<String> questions;

  SignUpData({this.answers, this.ci, this.password, this.questions});

  factory SignUpData.fromJson(Map<String, dynamic> json) =>
      _$SignUpDataFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpDataToJson(this);
}
