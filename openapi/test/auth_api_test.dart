import 'package:openapi/api.dart';
import 'package:openapi/api/auth_api.dart';
import 'package:test/test.dart';


/// tests for AuthApi
void main() {
  final instance = Openapi().getAuthApi();

  group(AuthApi, () {
    // Send user identifier (email) and password, and returns access token and refresh token
    //
    //Future<TokenResponse> login({ LoginData loginData }) async
    test('test login', () async {
      // TODO
    });

    // Send refresh token and recive new pair of access and refresh tokens
    //
    //Future<TokenResponse> refreshTokens(String token) async
    test('test refreshTokens', () async {
      // TODO
    });

  });
}
