# FeatureFlagsAPI

All URIs are relative to *https://api-dev.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**featureFlagControllerGetFeatureFlags**](FeatureFlagsAPI.md#featureflagcontrollergetfeatureflags) | **GET** /feature-flags | 


# **featureFlagControllerGetFeatureFlags**
```swift
    open class func featureFlagControllerGetFeatureFlags(completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


FeatureFlagsAPI.featureFlagControllerGetFeatureFlags() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

