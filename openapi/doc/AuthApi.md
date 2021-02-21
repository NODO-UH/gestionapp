# openapi.api.AuthApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**login**](AuthApi.md#login) | **post** /auth/login | 
[**refreshTokens**](AuthApi.md#refreshTokens) | **post** /auth/refresh | 


# **login**
> TokenResponse login(loginData)



Send user identifier (email) and password, and returns access token and refresh token

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AuthApi();
var loginData = new LoginData(); // LoginData | User name and password

try { 
    var result = api_instance.login(loginData);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->login: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginData** | [**LoginData**](LoginData.md)| User name and password | [optional] 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refreshTokens**
> TokenResponse refreshTokens(token)



Send refresh token and recive new pair of access and refresh tokens

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AuthApi();
var token = token_example; // String | 

try { 
    var result = api_instance.refreshTokens(token);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->refreshTokens: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**|  | 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

