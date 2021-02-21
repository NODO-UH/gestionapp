import '../../utils/constants.dart';
import '../models.dart';

class GestionApi {
  Future<Token> getTokens() async {
    return Token(
        token: SampleData.authToken, tokenRefresh: SampleData.refreshToken);
  }

  Future<Quota> getQuota() async {
    return Quota(
        quota: SampleData.userQuota,
        bonus: SampleData.userBonus,
        cosumed: SampleData.userConsumedQuota);
  }
}
