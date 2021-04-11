import 'package:gestionuh/src/data/models/base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth.g.dart';

@JsonSerializable(explicitToJson: true)
class Auth extends BaseModel {
  String? token;
  String? tokenRefresh;

  Auth({this.token, this.tokenRefresh});

  static Auth fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);

  Map<String, dynamic> toJson() => _$AuthToJson(this);
}
