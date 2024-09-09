# CategoryAPI

All URIs are relative to *https://api-dev.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**categoryControllerFetchMany**](CategoryAPI.md#categorycontrollerfetchmany) | **GET** /categories | 
[**categoryControllerUpsertMany**](CategoryAPI.md#categorycontrollerupsertmany) | **PUT** /categories/bulk | 


# **categoryControllerFetchMany**
```swift
    open class func categoryControllerFetchMany(parentId: String? = nil, completion: @escaping (_ data: [FetchManyCategoriesResponseDto]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let parentId = "parentId_example" // String |  (optional)

CategoryAPI.categoryControllerFetchMany(parentId: parentId) { (response, error) in
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
 **parentId** | **String** |  | [optional] 

### Return type

[**[FetchManyCategoriesResponseDto]**](FetchManyCategoriesResponseDto.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoryControllerUpsertMany**
```swift
    open class func categoryControllerUpsertMany(upsertManyCategoryDto: UpsertManyCategoryDto, completion: @escaping (_ data: UpsertManyCategoriesResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let upsertManyCategoryDto = UpsertManyCategoryDto(data: [UpsertCategoryDto(idOnStore: "idOnStore_example", name: "name_example", depth0Id: "depth0Id_example", depth1Id: "depth1Id_example", depth2Id: "depth2Id_example", depth3Id: "depth3Id_example", depth4Id: "depth4Id_example")]) // UpsertManyCategoryDto | 

CategoryAPI.categoryControllerUpsertMany(upsertManyCategoryDto: upsertManyCategoryDto) { (response, error) in
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
 **upsertManyCategoryDto** | [**UpsertManyCategoryDto**](UpsertManyCategoryDto.md) |  | 

### Return type

[**UpsertManyCategoriesResponseDto**](UpsertManyCategoriesResponseDto.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

