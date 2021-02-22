import 'package:json_annotation/json_annotation.dart';

abstract class BaseModel {
  @JsonKey(ignore: true)
  String error;

  BaseModel();
}
