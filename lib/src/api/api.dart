import 'package:gestionuh/src/models/quota.dart';
import 'package:gestionuh/src/models/auth.dart';
import '../constants.dart';


class GestionApi {

  Future<Token> getTokens(String userName, String password) async{
    return Token(token: SampleData.authToken, tokenRefresh: SampleData.refreshToken);
  }

  Future<Quota> getQuota(Token token) async{
    return Quota(quota: SampleData.userQuota, bonus: SampleData.userBonus, cosumed: SampleData.userConsumedQuota);
  }

}