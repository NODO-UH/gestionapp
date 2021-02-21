# openapi.api.ProxyApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proxyQuotaStatus**](ProxyApi.md#proxyQuotaStatus) | **get** /proxy/quota | 


# **proxyQuotaStatus**
> QuotaResponse proxyQuotaStatus()



Get proxy quota status

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

var api_instance = new ProxyApi();

try { 
    var result = api_instance.proxyQuotaStatus();
    print(result);
} catch (e) {
    print('Exception when calling ProxyApi->proxyQuotaStatus: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**QuotaResponse**](QuotaResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

