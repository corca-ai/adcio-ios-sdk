# NoticeAPI

All URIs are relative to *https://api-dev.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**notionNoticeControllerFetctList**](NoticeAPI.md#notionnoticecontrollerfetctlist) | **GET** /notion-notices | 


# **notionNoticeControllerFetctList**
```swift
    open class func notionNoticeControllerFetctList(completion: @escaping (_ data: NotionNoticeListDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


NoticeAPI.notionNoticeControllerFetctList() { (response, error) in
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

[**NotionNoticeListDto**](NotionNoticeListDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

