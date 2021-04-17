import 'package:gestionuh/src/data/models/base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_data.g.dart';

@JsonSerializable(explicitToJson: true)
class UserData extends BaseModel {
  String? careerName;
  String? email;
  bool? hasCloud;
  bool? hasEmail;
  bool? hasInternet;
  String? name;
  String? objectClass;
  String? position;

  UserData({
    this.careerName,
    this.email,
    this.hasCloud,
    this.hasEmail,
    this.hasInternet,
    this.name,
    this.objectClass,
    this.position,
  });

  static UserData fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
