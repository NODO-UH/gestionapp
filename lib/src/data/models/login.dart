import 'package:json_annotation/json_annotation.dart';

import 'package:gestionuh/src/data/models/base_model.dart';

part 'login.g.dart';

@JsonSerializable(explicitToJson: true)
class Login extends BaseModel {
  String? user;
  String? password;

  Login(this.user, this.password);

  static Login fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LoginToJson(this);
}
