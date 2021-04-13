import 'package:gestionuh/src/data/models/base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pass_reset.g.dart';

@JsonSerializable(explicitToJson: true)
class PassReset extends BaseModel {
  String? oldPassword;
  String? newPassword;

  PassReset(this.oldPassword, this.newPassword);

  static PassReset fromJson(Map<String, dynamic> json) =>
      _$PassResetFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PassResetToJson(this);
}
