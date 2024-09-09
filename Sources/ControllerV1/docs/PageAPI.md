# PageAPI

All URIs are relative to *https://api-dev.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pageControllerFetchActivePlacements**](PageAPI.md#pagecontrollerfetchactiveplacements) | **GET** /pages/{name}/placements | 
[**pageControllerFetchManyPage**](PageAPI.md#pagecontrollerfetchmanypage) | **GET** /pages | 
[**pageControllerRemovePage**](PageAPI.md#pagecontrollerremovepage) | **DELETE** /pages/{name} | 
[**pageControllerUpdatePage**](PageAPI.md#pagecontrollerupdatepage) | **PATCH** /pages/{name} | 


# **pageControllerFetchActivePlacements**
```swift
    open class func pageControllerFetchActivePlacements(name: String, clientId: String, supportEnvironment: SupportEnvironment_pageControllerFetchActivePlacements? = nil, completion: @escaping (_ data: [FetchActivePlacementsResponseDto]?, _ error: Error?) -> Void)
```



Fetch active placements of the page.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | 
let clientId = "clientId_example" // String | The client ID of the placement owner.
let supportEnvironment = "supportEnvironment_example" // String | The support environment of the placement. (optional)

// 
PageAPI.pageControllerFetchActivePlacements(name: name, clientId: clientId, supportEnvironment: supportEnvironment) { (response, error) in
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
 **supportEnvironment** | **String** | The support environment of the placement. | [optional] 

### Return type

[**[FetchActivePlacementsResponseDto]**](FetchActivePlacementsResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pageControllerFetchManyPage**
```swift
    open class func pageControllerFetchManyPage(limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: PageControllerFetchManyPage200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

PageAPI.pageControllerFetchManyPage(limit: limit, offset: offset) { (response, error) in
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
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**PageControllerFetchManyPage200Response**](PageControllerFetchManyPage200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pageControllerRemovePage**
```swift
    open class func pageControllerRemovePage(name: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | 

PageAPI.pageControllerRemovePage(name: name) { (response, error) in
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

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pageControllerUpdatePage**
```swift
    open class func pageControllerUpdatePage(name: String, page: Page, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | 
let page = Page(name: "name_example", clientId: "clientId_example", createdAt: Date(), deletedAt: Date()) // Page | 

PageAPI.pageControllerUpdatePage(name: name, page: page) { (response, error) in
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
 **page** | [**Page**](Page.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

