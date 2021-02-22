import 'package:gestionuh/src/data/models/BaseModel.dart';
import 'package:json_annotation/json_annotation.dart';

part 'passReset.g.dart';

@JsonSerializable()
class PassReset extends BaseModel {
  String oldPassword;
  String newPassword;

  PassReset(this.oldPassword, this.newPassword);

  factory PassReset.fromJson(Map<String, dynamic> json) =>
      _$PassResetFromJson(json);

  Map<String, dynamic> toJson() => _$PassResetToJson(this);
}
