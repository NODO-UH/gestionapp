import 'dart:convert';

import 'package:dio/dio.dart';
import '../../utils/constants.dart';
import '../models.dart';

class GestionApi {
  String userName;
  String password;
  String apiUrl = Constants.baseUrl;

  GestionApi();

  Future<Auth> getTokens() async {
    if (Constants.TestMode)
      return Auth(
        token: SampleData.authToken,
        tokenRefresh: SampleData.refreshToken,
      );

    Auth response = Auth();

    if (this.userName == null || this.password == null) {
      response.error = "Missing User Name or Password";
      return response;
    }

    Dio dio = new Dio(BaseOptions(baseUrl: apiUrl));

    var login = Login(this.userName, this.password).toJson();

    Response<String> result;
    try {
      result = await dio.post<String>(Constants.authUrl, data: login);
    } catch (error) {
      response.error = error.toString();
      return response;
    }

    response = Auth.fromJson(jsonDecode(result.data));

    return response;
  }

  Future<Quota> getQuota() async {
    if (Constants.TestMode)
      return Quota(
          quota: SampleData.userQuota,
          bonus: SampleData.userBonus,
          consumed: SampleData.userConsumedQuota);

    Auth tokens = await getTokens();
    Quota quota = new Quota();

    if (tokens.error != null) {
      quota.error = tokens.error;
      return quota;
    }

    var headers = {'Authorization': 'Bearer ${tokens.token}'};

    Dio dio = new Dio(BaseOptions(baseUrl: apiUrl, headers: headers));

    Response<String> response;

    try {
      response = await dio.get(Constants.quotaUrl);
    } catch (error) {
      quota.error = error.toString();
      return quota;
    }

    quota = Quota.fromJson(jsonDecode(response.data));

    return quota;
  }

  Future<MailQuota> getMailQuota() async {
    if (Constants.TestMode)
      return MailQuota(
        quota: SampleData.mailQuota,
        consumed: SampleData.mailConsumedQuota,
      );

    Auth tokens = await getTokens();
    MailQuota mailQuota = new MailQuota();

    if (tokens.error != null) {
      mailQuota.error = tokens.error;
      return mailQuota;
    }

    var headers = {'Authorization': 'Bearer ${tokens.token}'};

    Dio dio = new Dio(BaseOptions(baseUrl: apiUrl, headers: headers));

    Response<String> response;

    try {
      response = await dio.get(Constants.mailQuotaUrl);
    } catch (error) {
      mailQuota.error = error.toString();
      return mailQuota;
    }

    mailQuota = MailQuota.fromJson(jsonDecode(response.data));

    return mailQuota;
  }

  Future<UserData> getUserData() async {
    if (Constants.TestMode)
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

    Auth tokens = await getTokens();
    UserData userData = new UserData();

    if (tokens.error != null) {
      userData.error = tokens.error;
      return userData;
    }

    var headers = {'Authorization': 'Bearer ${tokens.token}'};

    Dio dio = new Dio(BaseOptions(baseUrl: apiUrl, headers: headers));

    Response<String> response;

    try {
      response = await dio.get(Constants.userDataUrl);
    } catch (error) {
      userData.error = error.toString();
      return userData;
    }

    userData = UserData.fromJson(jsonDecode(response.data));

    return userData;
  }

  Future<AllSecurityQuestions> getAllSecurityQuestions() async {
    if (Constants.TestMode)
      return AllSecurityQuestions(
        questions: SampleData.securityQuestions,
      );

    Auth tokens = await getTokens();
    AllSecurityQuestions questions = new AllSecurityQuestions();

    if (tokens.error != null) {
      questions.error = tokens.error;
      return questions;
    }

    var headers = {'Authorization': 'Bearer ${tokens.token}'};

    Dio dio = new Dio(BaseOptions(baseUrl: apiUrl, headers: headers));

    Response<String> response;

    try {
      response = await dio.get(Constants.allSecurityQuestionsUrl);
    } catch (error) {
      questions.error = error.toString();
      return questions;
    }

    questions = AllSecurityQuestions.fromJson(jsonDecode(response.data));

    return questions;
  }

  Future<Status> resetPassword(String newPassw) async {
    if (Constants.TestMode) return Status(status: true);

    Auth tokens = await getTokens();

    Status response = new Status();

    if (tokens.error != null) {
      response.error = tokens.error;
      return response;
    }

    var headers = {'Authorization': 'Bearer ${tokens.token}'};

    Dio dio = new Dio(BaseOptions(baseUrl: apiUrl, headers: headers));

    PassReset credentials = new PassReset(this.password, newPassw);

    try {
      await dio.post(Constants.resetPasswordUrld, data: credentials.toJson());
    } catch (error) {
      response.error = error.toString();
      return response;
    }

    return Status(status: true);
  }

  void setLogin(String userName, String password) {
    this.userName = userName;
    this.password = password;
  }

  void logout() {
    this.userName = null;
    this.password = null;
  }
}
