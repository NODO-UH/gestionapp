import 'package:openapi/api.dart';
import 'package:openapi/api/proxy_api.dart';
import 'package:test/test.dart';


/// tests for ProxyApi
void main() {
  final instance = Openapi().getProxyApi();

  group(ProxyApi, () {
    // Get proxy quota status
    //
    //Future<QuotaResponse> proxyQuotaStatus() async
    test('test proxyQuotaStatus', () async {
      // TODO
    });

  });
}
