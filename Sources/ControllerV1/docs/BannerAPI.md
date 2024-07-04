# BannerAPI

All URIs are relative to *https://api.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bannerControllerCreate**](BannerAPI.md#bannercontrollercreate) | **POST** /banners | 
[**bannerControllerDelete**](BannerAPI.md#bannercontrollerdelete) | **DELETE** /banners/{id} | 
[**bannerControllerFetchMany**](BannerAPI.md#bannercontrollerfetchmany) | **GET** /banners | 
[**bannerControllerFetchOne**](BannerAPI.md#bannercontrollerfetchone) | **GET** /banners/{id} | 
[**bannerControllerUpdate**](BannerAPI.md#bannercontrollerupdate) | **PUT** /banners/{id} | 


# **bannerControllerCreate**
```swift
    open class func bannerControllerCreate(createBannerDto: CreateBannerDto, completion: @escaping (_ data: Banner?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createBannerDto = CreateBannerDto(name: "name_example", type: "type_example", creatives: [UpsertCreativeDto(id: "id_example", mediaUrl: "mediaUrl_example", width: 123, height: 123, placementFormatRatio: "placementFormatRatio_example")], placementIds: ["placementIds_example"], url: "url_example", data: 123, deepLink: "deepLink_example", appRoute: "appRoute_example", startsAt: Date(), endsAt: Date(), categoryId: "categoryId_example", productId: "productId_example") // CreateBannerDto | 

BannerAPI.bannerControllerCreate(createBannerDto: createBannerDto) { (response, error) in
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
 **createBannerDto** | [**CreateBannerDto**](CreateBannerDto.md) |  | 

### Return type

[**Banner**](Banner.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bannerControllerDelete**
```swift
    open class func bannerControllerDelete(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

BannerAPI.bannerControllerDelete(id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bannerControllerFetchMany**
```swift
    open class func bannerControllerFetchMany(orderBy: [String]? = nil, select: [Select_bannerControllerFetchMany]? = nil, activated: Bool? = nil, name: String? = nil, placementIds: [String]? = nil, type: ModelType_bannerControllerFetchMany? = nil, startsAt: Date? = nil, endsAt: Date? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: BannerControllerFetchMany200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let orderBy = ["inner_example"] // [String] | BannerSortOption (optional)
let select = ["select_example"] // [String] |  (optional)
let activated = true // Bool |  (optional)
let name = "name_example" // String |  (optional)
let placementIds = ["inner_example"] // [String] |  (optional)
let type = "type_example" // String |  (optional)
let startsAt = Date() // Date |  (optional)
let endsAt = Date() // Date |  (optional)
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

BannerAPI.bannerControllerFetchMany(orderBy: orderBy, select: select, activated: activated, name: name, placementIds: placementIds, type: type, startsAt: startsAt, endsAt: endsAt, limit: limit, offset: offset) { (response, error) in
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
 **orderBy** | [**[String]**](String.md) | BannerSortOption | [optional] 
 **select** | [**[String]**](String.md) |  | [optional] 
 **activated** | **Bool** |  | [optional] 
 **name** | **String** |  | [optional] 
 **placementIds** | [**[String]**](String.md) |  | [optional] 
 **type** | **String** |  | [optional] 
 **startsAt** | **Date** |  | [optional] 
 **endsAt** | **Date** |  | [optional] 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**BannerControllerFetchMany200Response**](BannerControllerFetchMany200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bannerControllerFetchOne**
```swift
    open class func bannerControllerFetchOne(id: String, completion: @escaping (_ data: FetchBannerResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

BannerAPI.bannerControllerFetchOne(id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

[**FetchBannerResponseDto**](FetchBannerResponseDto.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bannerControllerUpdate**
```swift
    open class func bannerControllerUpdate(id: String, updateBannerDto: UpdateBannerDto, completion: @escaping (_ data: Banner?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let updateBannerDto = UpdateBannerDto(activated: false, name: "name_example", creatives: [UpsertCreativeDto(id: "id_example", mediaUrl: "mediaUrl_example", width: 123, height: 123, placementFormatRatio: "placementFormatRatio_example")], placementIds: ["placementIds_example"], url: "url_example", data: 123, deepLink: "deepLink_example", appRoute: "appRoute_example", startsAt: Date(), endsAt: Date(), categoryId: "categoryId_example", productId: "productId_example") // UpdateBannerDto | 

BannerAPI.bannerControllerUpdate(id: id, updateBannerDto: updateBannerDto) { (response, error) in
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
 **id** | **String** |  | 
 **updateBannerDto** | [**UpdateBannerDto**](UpdateBannerDto.md) |  | 

### Return type

[**Banner**](Banner.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

