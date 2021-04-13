import 'package:gestionuh/src/data/models/base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'password_reset_data.g.dart';

@JsonSerializable(explicitToJson: true)
class PasswordResetData extends BaseModel {
  List<String>? answers;
  String? ci;
  String? newPassword;
  List<String>? questions;

  PasswordResetData({this.answers, this.ci, this.newPassword, this.questions});

  static PasswordResetData fromJson(Map<String, dynamic> json) =>
      _$PasswordResetDataFromJson(json);

  Map<String, dynamic> toJson() => _$PasswordResetDataToJson(this);
}
