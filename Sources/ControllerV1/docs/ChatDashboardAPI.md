# ChatDashboardAPI

All URIs are relative to *https://api-dev.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chatDashboardControllerFetchDialogue**](ChatDashboardAPI.md#chatdashboardcontrollerfetchdialogue) | **GET** /chat-dashboard/dialogue | 


# **chatDashboardControllerFetchDialogue**
```swift
    open class func chatDashboardControllerFetchDialogue(query: String? = nil, date: Date? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: ChatDashboardControllerFetchDialogue200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let query = "query_example" // String |  (optional)
let date = Date() // Date |  (optional)
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

ChatDashboardAPI.chatDashboardControllerFetchDialogue(query: query, date: date, limit: limit, offset: offset) { (response, error) in
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
 **query** | **String** |  | [optional] 
 **date** | **Date** |  | [optional] 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**ChatDashboardControllerFetchDialogue200Response**](ChatDashboardControllerFetchDialogue200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

