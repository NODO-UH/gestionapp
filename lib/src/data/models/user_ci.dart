import 'package:gestionuh/src/data/models/base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_ci.g.dart';

@JsonSerializable(explicitToJson: true)
class UserCi extends BaseModel {
  String? ci;

  UserCi({this.ci});

  static UserCi fromJson(Map<String, dynamic> json) => _$UserCiFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserCiToJson(this);
}
