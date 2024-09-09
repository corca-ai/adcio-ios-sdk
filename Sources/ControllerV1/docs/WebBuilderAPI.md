# WebBuilderAPI

All URIs are relative to *https://api-dev.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**webBuilderControllerOauth**](WebBuilderAPI.md#webbuildercontrolleroauth) | **GET** /web-builder/{webBuilder}/oauth/callback | 
[**webBuilderControllerRedirect**](WebBuilderAPI.md#webbuildercontrollerredirect) | **GET** /web-builder/{webBuilder}/oauth/redirect | 


# **webBuilderControllerOauth**
```swift
    open class func webBuilderControllerOauth(webBuilder: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let webBuilder = "webBuilder_example" // String | 

WebBuilderAPI.webBuilderControllerOauth(webBuilder: webBuilder) { (response, error) in
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

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webBuilder** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webBuilderControllerRedirect**
```swift
    open class func webBuilderControllerRedirect(webBuilder: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let webBuilder = "webBuilder_example" // String | 

WebBuilderAPI.webBuilderControllerRedirect(webBuilder: webBuilder) { (response, error) in
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

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webBuilder** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

