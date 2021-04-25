import 'package:json_annotation/json_annotation.dart';

import 'package:gestionuh/src/data/models/base_model.dart';

part 'auth.g.dart';

@JsonSerializable(explicitToJson: true)
class Auth extends BaseModel {
  String? token;
  String? tokenRefresh;

  Auth({this.token, this.tokenRefresh});

  static Auth fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AuthToJson(this);
}
