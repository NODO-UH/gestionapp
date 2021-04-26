import 'package:gestionuh/src/data/models/base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'status.g.dart';

@JsonSerializable()
class Status extends BaseModel {
  bool? status;

  Status({this.status});

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StatusToJson(this);
}
