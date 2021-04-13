import 'dart:convert';

import 'package:dio/dio.dart';

import '../../utils/constants.dart';
import '../models.dart';

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

    Auth response = Auth();

    if (userName == null || password == null) {
      response.error = 'Missing User Name or Password';
      return response;
    }

    final dio = Dio(BaseOptions(baseUrl: apiUrl));

    final login = Login(userName, password).toJson();

    Response<String> result;
    try {
      result = await dio.post<String>(Constants.authUrl, data: login);
    } catch (error) {
      response.error = error.toString();
      return response;
    }

    return response =
        Auth.fromJson(jsonDecode(result.data!) as Map<String, dynamic>);
  }

  Future<Quota> getQuota() async {
    if (Constants.testMode) {
      return Quota(
        quota: SampleData.userQuota,
        bonus: SampleData.userBonus,
        consumed: SampleData.userConsumedQuota,
      );
    }

    final tokens = await getTokens();
    var quota = Quota();

    if (tokens.error != null) {
      quota.error = tokens.error;
      return quota;
    }

    final headers = {'Authorization': 'Bearer ${tokens.token}'};

    final dio = Dio(BaseOptions(baseUrl: apiUrl, headers: headers));

    Response<String> response;

    try {
      response = await dio.get(Constants.quotaUrl);
    } catch (error) {
      quota.error = error.toString();
      return quota;
    }

    return quota =
        Quota.fromJson(jsonDecode(response.data!) as Map<String, dynamic>);
  }

  Future<MailQuota> getMailQuota() async {
    if (Constants.testMode) {
      return MailQuota(
        quota: SampleData.mailQuota,
        consumed: SampleData.mailConsumedQuota,
      );
    }

    final tokens = await getTokens();
    var mailQuota = MailQuota();

    if (tokens.error != null) {
      mailQuota.error = tokens.error;
      return mailQuota;
    }

    final headers = {'Authorization': 'Bearer ${tokens.token}'};

    final dio = Dio(BaseOptions(baseUrl: apiUrl, headers: headers));

    Response<String> response;

    try {
      response = await dio.get(Constants.mailQuotaUrl);
    } catch (error) {
      mailQuota.error = error.toString();
      return mailQuota;
    }

    return mailQuota =
        MailQuota.fromJson(jsonDecode(response.data!) as Map<String, dynamic>);
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

    final tokens = await getTokens();
    UserData userData = UserData();

    if (tokens.error != null) {
      userData.error = tokens.error;
      return userData;
    }

    final headers = {'Authorization': 'Bearer ${tokens.token}'};

    final dio = Dio(BaseOptions(baseUrl: apiUrl, headers: headers));

    Response<String> response;

    try {
      response = await dio.get(Constants.userDataUrl);
    } catch (error) {
      userData.error = error.toString();
      return userData;
    }

    userData =
        UserData.fromJson(jsonDecode(response.data!) as Map<String, dynamic>);

    userData.objectClass =
        Constants.objectClassTranslations[userData.objectClass];

    return userData;
  }

  Future<SecurityQuestions> getAllSecurityQuestions() async {
    if (Constants.testMode) {
      return SecurityQuestions(
        questions: SampleData.securityQuestions,
      );
    }

    SecurityQuestions questions = SecurityQuestions();

    final dio = Dio(BaseOptions(baseUrl: apiUrl));

    Response<String> response;

    try {
      response = await dio.get(Constants.allSecurityQuestionsUrl);
    } catch (error) {
      questions.error = error.toString();
      return questions;
    }

    return questions = SecurityQuestions.fromJson(
        jsonDecode(response.data!) as Map<String, dynamic>);
  }

  Future<SecurityQuestions> getUserSecurityQuestions(String ci) async {
    if (Constants.testMode) {
      return SecurityQuestions(
        questions: SampleData.userSecurityQuestions,
      );
    }

    SecurityQuestions questions = SecurityQuestions();

    final dio = Dio(BaseOptions(baseUrl: apiUrl));

    Response<String> response;

    try {
      response = await dio.request(Constants.userSecurityQuestionsUrl,
          data: user.toJson(), options: Options(method: 'GET'));
    } catch (error) {
      questions.error = error.toString();
      return questions;
    }

    return questions = SecurityQuestions.fromJson(
        jsonDecode(response.data!) as Map<String, dynamic>);
  }

  Future<Status> resetPassword(String newPassw) async {
    if (Constants.testMode) return Status(status: true);

    final tokens = await getTokens();

    final response = Status();

    if (tokens.error != null) {
      response.error = tokens.error;
      return response;
    }

    final headers = {'Authorization': 'Bearer ${tokens.token}'};

    final dio = Dio(BaseOptions(baseUrl: apiUrl, headers: headers));

    final credentials = PassReset(password, newPassw);

    try {
      await dio.post(Constants.resetPasswordUrld, data: credentials.toJson());
    } catch (error) {
      response.error = error.toString();
      return response;
    }

    return Status(status: true);
  }

  Future<UserId> signUp(PasswordEditData data) async {
    if (Constants.testMode) {
      return UserId(
        userID: SampleData.userMail,
      );
    }

    UserId user = UserId();

    final dio = Dio(BaseOptions(baseUrl: apiUrl));

    Response<String> response;

    try {
      response = await dio.post(Constants.signUpUrl, data: data.toJson());
    } catch (error) {
      user.error = error.toString();
      return user;
    }

    return user =
        UserId.fromJson(jsonDecode(response.data!) as Map<String, dynamic>);
  }

  Future<UserId> passwordRecovery(PasswordEditData data) async {
    if (Constants.testMode) {
      return UserId(
        userID: SampleData.userMail,
      );
    }

    UserId user = UserId();

    final dio = Dio(BaseOptions(baseUrl: apiUrl));

    Response<String> response;

    try {
      response =
          await dio.post(Constants.passwordRecoveryUrl, data: data.toJson());
    } catch (error) {
      user.error = error.toString();
      return user;
    }

    return user =
        UserId.fromJson(jsonDecode(response.data!) as Map<String, dynamic>);
  }

  void setLogin(String userName, String password) {
    this.userName = userName;
    this.password = password;
  }

  void logout() {
    userName = null;
    password = null;
  }
}
