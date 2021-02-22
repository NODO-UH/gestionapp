import 'dart:developer';

import 'package:gestionuh/src/data/api/api.dart';
import 'package:gestionuh/src/data/models.dart';

class QuotasRepository {
  final GestionApi api;

  QuotasRepository({
    this.api,
  });

  Future<Quota> getQuota() async {
    Quota result;
    try {
      result = await api.getQuota();
      if (result.error != null) {
        log(result.error);
      }
      return result;
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
