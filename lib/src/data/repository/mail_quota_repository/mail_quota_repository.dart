import 'dart:developer';

import 'package:gestionuh/src/data/api/api.dart';
import 'package:gestionuh/src/data/models.dart';

class MailQuotasRepository {
  final GestionApi api;

  MailQuotasRepository({
    required this.api,
  });

  Future<MailQuota?> getQuota() async {
    MailQuota result;
    try {
      result = await api.getMailQuota();
      if (result.error != null) {
        log(result.error!);
      }
      return result;
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
