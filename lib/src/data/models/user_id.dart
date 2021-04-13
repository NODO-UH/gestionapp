import 'package:gestionuh/src/data/models/base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_id.g.dart';

@JsonSerializable(explicitToJson: true)
class UserId extends BaseModel {
  String? userID;

  UserId({this.userID});

  static UserId fromJson(Map<String, dynamic> json) => _$UserIdFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserIdToJson(this);
}
