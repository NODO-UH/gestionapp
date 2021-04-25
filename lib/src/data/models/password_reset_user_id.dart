import 'package:json_annotation/json_annotation.dart';

import 'package:gestionuh/src/data/models/base_model.dart';

part 'password_reset_user_id.g.dart';

@JsonSerializable(explicitToJson: true)
class PasswordResetUserId extends BaseModel {
  String? userId;

  PasswordResetUserId({this.userId});

  static PasswordResetUserId fromJson(Map<String, dynamic> json) =>
      _$PasswordResetUserIdFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PasswordResetUserIdToJson(this);
}
