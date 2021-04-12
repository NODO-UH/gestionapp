import 'package:gestionuh/src/data/models/base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'userId.g.dart';

@JsonSerializable(explicitToJson: true)
class UserId extends BaseModel {
  String? userID;

  UserId({this.userID});

  static UserId fromJson(Map<String, dynamic> json) =>
      _$SignUpUserIdFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpUserIdToJson(this);
}
