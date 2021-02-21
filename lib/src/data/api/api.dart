import '../../utils/constants.dart';
import '../models.dart';

class GestionApi {
  Future<Auth> getTokens() async {
    return Auth(
        token: SampleData.authToken, tokenRefresh: SampleData.refreshToken);
  }

  Future<Quota> getQuota() async {
    return Quota(
        quota: SampleData.userQuota,
        bonus: SampleData.userBonus,
        consumed: SampleData.userConsumedQuota);
  }
}
