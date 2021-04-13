import 'package:gestionuh/src/data/models/base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'mail_quota.g.dart';

@JsonSerializable(explicitToJson: true)
class MailQuota extends BaseModel {
  int? quota;
  int? consumed;

  MailQuota({this.quota, this.consumed});

  static MailQuota fromJson(Map<String, dynamic> json) =>
      _$MailQuotaFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MailQuotaToJson(this);
}
