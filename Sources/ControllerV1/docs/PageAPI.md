# PageAPI

All URIs are relative to *https://api.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pageControllerFetchActivePlacements**](PageAPI.md#pagecontrollerfetchactiveplacements) | **GET** /pages/{name}/placements | 


# **pageControllerFetchActivePlacements**
```swift
    open class func pageControllerFetchActivePlacements(name: String, clientId: String, completion: @escaping (_ data: [FetchActivePlacementsResponseDto]?, _ error: Error?) -> Void)
```



Fetch active placements of the page.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | 
let clientId = "clientId_example" // String | The client ID of the placement owner.

// 
PageAPI.pageControllerFetchActivePlacements(name: name, clientId: clientId) { (response, error) in
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
 **name** | **String** |  | 
 **clientId** | **String** | The client ID of the placement owner. | 

### Return type

[**[FetchActivePlacementsResponseDto]**](FetchActivePlacementsResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

