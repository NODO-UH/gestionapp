import 'package:gestionuh/src/data/models/BaseModel.dart';
import 'package:json_annotation/json_annotation.dart';

part 'userData.g.dart';

@JsonSerializable()
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

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
