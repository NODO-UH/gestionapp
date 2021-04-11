import 'package:gestionuh/src/data/models/BaseModel.dart';
import 'package:json_annotation/json_annotation.dart';

part 'signUpUserId.g.dart';

@JsonSerializable()
class SignUpUserId extends BaseModel {
  String UserID;

  SignUpUserId({this.UserID});

  factory SignUpUserId.fromJson(Map<String, dynamic> json) =>
      _$SignUpUserIdFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpUserIdToJson(this);
}
