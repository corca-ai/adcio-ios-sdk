# CampaignAPI

All URIs are relative to *https://api-dev.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**campaignControllerCreate**](CampaignAPI.md#campaigncontrollercreate) | **POST** /campaign | 
[**campaignControllerFetchMany**](CampaignAPI.md#campaigncontrollerfetchmany) | **GET** /campaign | 
[**campaignControllerFetchOne**](CampaignAPI.md#campaigncontrollerfetchone) | **GET** /campaign/{id} | 
[**campaignControllerRemove**](CampaignAPI.md#campaigncontrollerremove) | **DELETE** /campaign/{id} | 
[**campaignControllerUpdate**](CampaignAPI.md#campaigncontrollerupdate) | **PATCH** /campaign/{id} | 


# **campaignControllerCreate**
```swift
    open class func campaignControllerCreate(createCampaignDto: CreateCampaignDto, completion: @escaping (_ data: CreateCampaignResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createCampaignDto = CreateCampaignDto(title: "title_example", adGroup: CreateAdGroupDataDto(maxBudgetPerDay: 123, totalBudgetInPeriod: 123, budgetType: AdGroupBudgetType(), title: "title_example", type: "type_example", placementId: "placementId_example", productIds: ["productIds_example"], bannerIds: ["bannerIds_example"], startsAt: Date(), endsAt: Date(), targetValueIds: ["targetValueIds_example"]), clickLookbackWindowDays: 123, impressionLookbackWindowDays: 123) // CreateCampaignDto | 

CampaignAPI.campaignControllerCreate(createCampaignDto: createCampaignDto) { (response, error) in
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
 **createCampaignDto** | [**CreateCampaignDto**](CreateCampaignDto.md) |  | 

### Return type

[**CreateCampaignResponseDto**](CreateCampaignResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **campaignControllerFetchMany**
```swift
    open class func campaignControllerFetchMany(orderBy: [String]? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: CampaignControllerFetchMany200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let orderBy = ["inner_example"] // [String] | CampaignSortOption (optional)
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

CampaignAPI.campaignControllerFetchMany(orderBy: orderBy, limit: limit, offset: offset) { (response, error) in
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
 **orderBy** | [**[String]**](String.md) | CampaignSortOption | [optional] 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**CampaignControllerFetchMany200Response**](CampaignControllerFetchMany200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **campaignControllerFetchOne**
```swift
    open class func campaignControllerFetchOne(id: String, completion: @escaping (_ data: FetchCampaignResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

CampaignAPI.campaignControllerFetchOne(id: id) { (response, error) in
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

[**FetchCampaignResponseDto**](FetchCampaignResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **campaignControllerRemove**
```swift
    open class func campaignControllerRemove(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

CampaignAPI.campaignControllerRemove(id: id) { (response, error) in
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **campaignControllerUpdate**
```swift
    open class func campaignControllerUpdate(id: String, updateCampaignDto: UpdateCampaignDto, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let updateCampaignDto = UpdateCampaignDto(title: "title_example") // UpdateCampaignDto | 

CampaignAPI.campaignControllerUpdate(id: id, updateCampaignDto: updateCampaignDto) { (response, error) in
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
 **updateCampaignDto** | [**UpdateCampaignDto**](UpdateCampaignDto.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

