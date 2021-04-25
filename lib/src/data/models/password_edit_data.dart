import 'package:json_annotation/json_annotation.dart';

import 'package:gestionuh/src/data/models/base_model.dart';

part 'password_edit_data.g.dart';

@JsonSerializable(explicitToJson: true)
class PasswordEditData extends BaseModel {
  List<String>? answers;
  String? ci;
  String? password;
  List<String>? questions;

  PasswordEditData({this.answers, this.ci, this.password, this.questions});

  static PasswordEditData fromJson(Map<String, dynamic> json) =>
      _$PasswordEditDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PasswordEditDataToJson(this);
}
