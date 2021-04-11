import 'package:gestionuh/src/data/models/base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sign_up_user_id.g.dart';

@JsonSerializable(explicitToJson: true)
class SignUpUserId extends BaseModel {
  String? userID;

  SignUpUserId({this.userID});

  static SignUpUserId fromJson(Map<String, dynamic> json) =>
      _$SignUpUserIdFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpUserIdToJson(this);
}
