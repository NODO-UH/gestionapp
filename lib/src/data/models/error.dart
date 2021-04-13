import 'package:gestionuh/src/data/models/base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'error.g.dart';

@JsonSerializable(explicitToJson: true)
class Error extends BaseModel {
  int? code;
  String? message;

  Error({this.code, this.message});

  static Error fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorToJson(this);
}
