# BootstrapAPI

All URIs are relative to *https://api-dev.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bootstrapControllerBootstrap**](BootstrapAPI.md#bootstrapcontrollerbootstrap) | **GET** /bootstrap | 


# **bootstrapControllerBootstrap**
```swift
    open class func bootstrapControllerBootstrap(clientId: String, clientApi: String? = nil, page: String? = nil, placements: String? = nil, disableAgent: Bool? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let clientId = "clientId_example" // String | Client ID.
let clientApi = "clientApi_example" // String |  (optional)
let page = "page_example" // String |  (optional)
let placements = "placements_example" // String |  (optional)
let disableAgent = true // Bool |  (optional)

BootstrapAPI.bootstrapControllerBootstrap(clientId: clientId, clientApi: clientApi, page: page, placements: placements, disableAgent: disableAgent) { (response, error) in
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
 **clientId** | **String** | Client ID. | 
 **clientApi** | **String** |  | [optional] 
 **page** | **String** |  | [optional] 
 **placements** | **String** |  | [optional] 
 **disableAgent** | **Bool** |  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

