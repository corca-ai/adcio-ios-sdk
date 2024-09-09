# LogsAPI

All URIs are relative to *https://receiver.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**logsControllerOnSearch**](LogsAPI.md#logscontrolleronsearch) | **POST** /logs/search | 


# **logsControllerOnSearch**
```swift
    open class func logsControllerOnSearch(trackSearchRequestDto: TrackSearchRequestDto, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```



Log when the customer searches.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let trackSearchRequestDto = TrackSearchRequestDto(storeId: "storeId_example", sessionId: "sessionId_example", deviceId: "deviceId_example", customerId: "customerId_example", sdkVersion: "sdkVersion_example", query: "query_example", found: true, pathname: "pathname_example", userAgent: "userAgent_example", appVersion: "appVersion_example") // TrackSearchRequestDto | 

// 
LogsAPI.logsControllerOnSearch(trackSearchRequestDto: trackSearchRequestDto) { (response, error) in
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
 **trackSearchRequestDto** | [**TrackSearchRequestDto**](TrackSearchRequestDto.md) |  | 

### Return type

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

