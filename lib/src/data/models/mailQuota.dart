import 'package:gestionuh/src/data/models/BaseModel.dart';
import 'package:json_annotation/json_annotation.dart';

part 'mailQuota.g.dart';

@JsonSerializable()
class MailQuota extends BaseModel {
  int quota;
  int consumed;

  MailQuota(this.quota, this.consumed);

  factory MailQuota.fromJson(Map<String, dynamic> json) =>
      _$MailQuotaFromJson(json);

  Map<String, dynamic> toJson() => _$MailQuotaToJson(this);
}
