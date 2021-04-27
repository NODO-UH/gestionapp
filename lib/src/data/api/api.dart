import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:gestionuh/src/data/models/base_model.dart';
import 'package:gestionuh/src/data/models/models.dart';
import 'package:gestionuh/src/utils/constants/constants.dart';

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
      response.error = 'Missing User Name or Password'; // dead code
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

    final UserData response = await apiRequest<UserData, UserData>(
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

  Future<SecurityQuestions> getUserSecurityQuestions(
      String ci, String email) async {
    if (Constants.testMode) {
      return SecurityQuestions(
        questions: SampleData.userSecurityQuestions,
      );
    }

    final UserCi user = UserCi(ci: ci, email: email);

    final params = user.toJson();

    return apiRequest<SecurityQuestions, UserCi>(
      Constants.userSecurityQuestionsUrl,
      () => SecurityQuestions(),
      null,
      (json) => SecurityQuestions.fromJson(json),
      queryParams: params,
    );
  }

  Future<Status> resetPassword(String currentPassw, String newPassw) async {
    if (Constants.testMode) return Status(status: true);

    Status response;

    final credentials = PassReset(currentPassw, newPassw);

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
        userId: SampleData.userMail,
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

  Future<PasswordResetUserId> passwordRecovery(PasswordResetData data) async {
    if (Constants.testMode) {
      return PasswordResetUserId(
        userId: SampleData.userMail,
      );
    }

    return apiRequest<PasswordResetUserId, PasswordResetData>(
      Constants.passwordRecoveryUrl,
      () => PasswordResetUserId(),
      data,
      (json) => PasswordResetUserId.fromJson(json),
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
    Map<String, dynamic>? queryParams,
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
      response = await dio.request(
        url,
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
        ),
        queryParameters: queryParams,
      );
    } catch (error) {
      target.error = Errors.ConnectionError;
      return target;
    }

    try {
      if (response.statusCode! >= 300) {
        final Error error =
            Error.fromJson(jsonDecode(response.data!) as Map<String, dynamic>);
        target.error = error.code.toString();
      } else {
        if (builder != null) {
          target = builder(jsonDecode(response.data!) as Map<String, dynamic>);
        }
      }
    } catch (e) {
      target.error = Errors.DefaultError;
    }

    if (target.error != null) {
      target.error = Errors.retrieveError(target.error!);
    }

    return target;
  }
}
