import 'package:gestionuh/src/models/quota.dart';
import 'package:gestionuh/src/models/token.dart';
import '../constants.dart';

import '../models/models.dart';

class GestionApi {

  Future<Token> getTokens() async{
    return Token(token: SampleData.authToken, tokenRefresh: SampleData.refreshToken);
  }

  Future<Quota> getQuota() async{
    return Quota(quota: SampleData.userQuota, bonus: SampleData.userBonus, cosumed: SampleData.userConsumedQuota);
  }

}