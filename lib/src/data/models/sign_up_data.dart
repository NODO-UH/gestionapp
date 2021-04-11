import 'package:gestionuh/src/data/models/base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sign_up_data.g.dart';

@JsonSerializable(explicitToJson: true)
class SignUpData extends BaseModel {
  List<String>? answers;
  String? ci;
  String? password;
  List<String>? questions;

  SignUpData({this.answers, this.ci, this.password, this.questions});

  static SignUpData fromJson(Map<String, dynamic> json) =>
      _$SignUpDataFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpDataToJson(this);
}
