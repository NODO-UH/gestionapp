import 'package:gestionuh/src/data/models/base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'quota.g.dart';

@JsonSerializable(explicitToJson: true)
class Quota extends BaseModel {
  int? quota;
  int? bonus;
  int? consumed;

  Quota({this.quota, this.bonus, this.consumed});

  static Quota fromJson(Map<String, dynamic> json) => _$QuotaFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$QuotaToJson(this);
}
