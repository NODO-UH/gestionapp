import 'dart:developer';

import 'package:gestionuh/src/data/api/api.dart';
import 'package:gestionuh/src/data/models.dart';

class ProfileRepository {
  final GestionApi api;

  ProfileRepository({
    this.api,
  });

  Future<UserData> getUserData() async {
    UserData result;
    try {
      result = await api.getUserData();
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
