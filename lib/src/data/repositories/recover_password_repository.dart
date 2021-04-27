import 'dart:developer';

import 'package:gestionuh/src/data/api/api.dart';
import 'package:gestionuh/src/data/models/models.dart';

class RecoverPasswordRepository {
  final GestionApi api;

  RecoverPasswordRepository({required this.api});

  Future<SecurityQuestions?> getUserSecurityQuestions(
      String ci, String email) async {
    try {
      final result = await api.getUserSecurityQuestions(ci, email);
      if (result.error != null) {
        log(result.error!);
      }
      return result;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  Future<PasswordResetUserId?> passwordRecovery(PasswordResetData data) async {
    try {
      final result = await api.passwordRecovery(data);
      if (result.error != null) {
        log(result.error!);
      }
      return result;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
