import 'dart:convert';

import 'package:dio/dio.dart';

import '../../utils/constants.dart';
import '../models.dart';

typedef ClassBuilder<T extends BaseModel> = T Function(
    Map<String, dynamic> json);
typedef ClassInitializer<T extends BaseModel> = T Function();
typedef TokenRetriever = Future<Auth> Function();

class GestionApi {
  String? userName;
  String? password;
  String apiUrl = Constants.baseUrl;

  GestionApi();

  Future<Auth> getTokens() async {
    if (Constants.testMode) {
      return Auth(
        token: SampleData.authToken,
        tokenRefresh: SampleData.refreshToken,
      );
    }

    final Auth response = Auth();

    if (userName == null || password == null) {
      response.error = 'Missing User Name or Password';
      return response;
    }

    final login = Login(userName, password);

    return apiRequest<Auth, Login>(
      Constants.authUrl,
      () => Auth(),
      login,
      (json) => Auth.fromJson(json),
      method: 'POST',
    );
  }

  Future<Quota> getQuota() async {
    if (Constants.testMode) {
      return Quota(
        quota: SampleData.userQuota,
        bonus: SampleData.userBonus,
        consumed: SampleData.userConsumedQuota,
      );
    }

    return apiRequest<Quota, Quota>(
      Constants.quotaUrl,
      () => Quota(),
      null,
      (json) => Quota.fromJson(json),
      auth: true,
    );
  }

  Future<MailQuota> getMailQuota() async {
    if (Constants.testMode) {
      return MailQuota(
        quota: SampleData.mailQuota,
        consumed: SampleData.mailConsumedQuota,
      );
    }

    return apiRequest<MailQuota, MailQuota>(Constants.mailQuotaUrl,
        () => MailQuota(), null, (json) => MailQuota.fromJson(json),
        auth: true);
  }

  Future<UserData> getUserData() async {
    if (Constants.testMode) {
      return UserData(
        careerName: SampleData.userCareer,
        email: SampleData.userMail,
        hasCloud: SampleData.userHasCloud,
        hasEmail: SampleData.userHasMail,
        hasInternet: SampleData.userHasInternet,
        name: SampleData.user,
        objectClass: SampleData.userObjectClass,
        position: SampleData.userPosition,
      );
    }

    UserData response = await apiRequest<UserData, UserData>(
      Constants.userDataUrl,
      () => UserData(),
      null,
      (json) => UserData.fromJson(json),
      auth: true,
    );

    if (response.error == null) {
      response.objectClass =
          Constants.objectClassTranslations[response.objectClass];
    }

    return response;
  }

  Future<SecurityQuestions> getAllSecurityQuestions() async {
    if (Constants.testMode) {
      return SecurityQuestions(
        questions: SampleData.securityQuestions,
      );
    }

    return apiRequest<SecurityQuestions, SecurityQuestions>(
      Constants.allSecurityQuestionsUrl,
      () => SecurityQuestions(),
      null,
      (json) => SecurityQuestions.fromJson(json),
    );
  }

  Future<SecurityQuestions> getUserSecurityQuestions(String ci) async {
    if (Constants.testMode) {
      return SecurityQuestions(
        questions: SampleData.userSecurityQuestions,
      );
    }

    final UserCi user = UserCi(ci: ci);

    return apiRequest<SecurityQuestions, UserCi>(
      Constants.userSecurityQuestionsUrl,
      () => SecurityQuestions(),
      user,
      (json) => SecurityQuestions.fromJson(json),
    );
  }

  Future<Status> resetPassword(String newPassw) async {
    if (Constants.testMode) return Status(status: true);

    Status response;

    final credentials = PassReset(password, newPassw);

    response = await apiRequest<Status, PassReset>(
      Constants.resetPasswordUrld,
      () => Status(),
      credentials,
      null,
      method: 'POST',
      auth: true,
    );

    if (response.error == null) {
      response.status = true;
    }

    return response;
  }

  Future<UserId> signUp(PasswordEditData data) async {
    if (Constants.testMode) {
      return UserId(
        userID: SampleData.userMail,
      );
    }

    return apiRequest<UserId, PasswordEditData>(
      Constants.signUpUrl,
      () => UserId(),
      data,
      (json) => UserId.fromJson(json),
      method: 'POST',
    );
  }

  Future<UserId> passwordRecovery(PasswordEditData data) async {
    if (Constants.testMode) {
      return UserId(
        userID: SampleData.userMail,
      );
    }

    return apiRequest(
      Constants.passwordRecoveryUrl,
      () => UserId(),
      data,
      (json) => UserId.fromJson(json),
      method: 'POST',
    );
  }

  void setLogin(String userName, String password) {
    this.userName = userName;
    this.password = password;
  }

  void logout() {
    userName = null;
    password = null;
  }

  Future<T> apiRequest<T extends BaseModel, K extends BaseModel>(
    String url,
    ClassInitializer<T> initializer,
    K? data,
    ClassBuilder<T>? builder, {
    String method = 'GET',
    bool auth = false,
    String apiUrl = Constants.baseUrl,
  }) async {
    final dio = Dio(BaseOptions(baseUrl: apiUrl));

    T target = initializer();

    Auth tokens;

    Map<String, String>? headers;

    if (auth) {
      tokens = await getTokens();

      if (tokens.error != null) {
        target.error = tokens.error;
        return target;
      }

      headers = {'Authorization': 'Bearer ${tokens.token}'};
    }

    Response<String> response;

    try {
      response = await dio.request(url,
          data: data?.toJson(),
          options: Options(
            method: method,
            validateStatus: (status) {
              if (status != null) {
                return status < 500;
              }
              return false;
            },
            headers: headers,
          ));
    } catch (error) {
      target.error = error.toString();
      return target;
    }

    if (builder != null) {
      try {
        final target =
            builder(jsonDecode(response.data!) as Map<String, dynamic>);
        return target;
      } catch (e) {
        try {
          final Error error = Error.fromJson(
              jsonDecode(response.data!) as Map<String, dynamic>);
          target.error = error.message;
        } catch (f) {
          target.error = f.toString();
        }
      }
    }

    return target;
  }
}
