# AdGroupAPI

All URIs are relative to *https://api-dev.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adGroupControllerCreate**](AdGroupAPI.md#adgroupcontrollercreate) | **POST** /ad-group | 
[**adGroupControllerDelete**](AdGroupAPI.md#adgroupcontrollerdelete) | **DELETE** /ad-group/{id} | 
[**adGroupControllerFetchAdGroupProducts**](AdGroupAPI.md#adgroupcontrollerfetchadgroupproducts) | **GET** /ad-group/{id}/products | 
[**adGroupControllerFetchAdGroups**](AdGroupAPI.md#adgroupcontrollerfetchadgroups) | **GET** /ad-group | 
[**adGroupControllerFetchAllBudget**](AdGroupAPI.md#adgroupcontrollerfetchallbudget) | **GET** /ad-group/all/budget | 
[**adGroupControllerFetchManyAdGroupTitles**](AdGroupAPI.md#adgroupcontrollerfetchmanyadgrouptitles) | **GET** /ad-group/all/titles | 
[**adGroupControllerFetchManyAdGroupsOfStore**](AdGroupAPI.md#adgroupcontrollerfetchmanyadgroupsofstore) | **GET** /ad-group/all/of-store | 
[**adGroupControllerFetchOne**](AdGroupAPI.md#adgroupcontrollerfetchone) | **GET** /ad-group/{id} | 
[**adGroupControllerUpdate**](AdGroupAPI.md#adgroupcontrollerupdate) | **PATCH** /ad-group/{id} | 
[**adGroupControllerUpdateBudget**](AdGroupAPI.md#adgroupcontrollerupdatebudget) | **PUT** /ad-group/budget | 
[**adGroupReviewControllerFetchAdGroupReviewCount**](AdGroupAPI.md#adgroupreviewcontrollerfetchadgroupreviewcount) | **GET** /ad-group-reviews/count | 
[**adGroupReviewControllerFetchAdGroupReviewDetail**](AdGroupAPI.md#adgroupreviewcontrollerfetchadgroupreviewdetail) | **GET** /ad-group-reviews/{id} | 
[**adGroupReviewControllerFetchAdGroupReviewHistories**](AdGroupAPI.md#adgroupreviewcontrollerfetchadgroupreviewhistories) | **GET** /ad-group-reviews/ad-groups/{adGroupId} | 
[**adGroupReviewControllerProcessAdGroupReview**](AdGroupAPI.md#adgroupreviewcontrollerprocessadgroupreview) | **POST** /ad-group-reviews/{id} | 
[**adGroupReviewControllerRequestAdGroupReview**](AdGroupAPI.md#adgroupreviewcontrollerrequestadgroupreview) | **POST** /ad-group-reviews/ad-groups/{adGroupId} | 
[**adGroupTargetControllerCreateAdGroupTargetKeys**](AdGroupAPI.md#adgrouptargetcontrollercreateadgrouptargetkeys) | **POST** /ad-group/target/keys | 
[**adGroupTargetControllerCreateAdGroupTargetValue**](AdGroupAPI.md#adgrouptargetcontrollercreateadgrouptargetvalue) | **POST** /ad-group/target/keys/{id}/values | 
[**adGroupTargetControllerFetchAdGroupTargetKeys**](AdGroupAPI.md#adgrouptargetcontrollerfetchadgrouptargetkeys) | **GET** /ad-group/target/keys | 


# **adGroupControllerCreate**
```swift
    open class func adGroupControllerCreate(createAdGroupDto: CreateAdGroupDto, completion: @escaping (_ data: AdGroup?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createAdGroupDto = CreateAdGroupDto(maxBudgetPerDay: 123, totalBudgetInPeriod: 123, budgetType: AdGroupBudgetType(), title: "title_example", type: "type_example", placementId: "placementId_example", productIds: ["productIds_example"], bannerIds: ["bannerIds_example"], startsAt: Date(), endsAt: Date(), targetValueIds: ["targetValueIds_example"], campaignId: "campaignId_example") // CreateAdGroupDto | 

AdGroupAPI.adGroupControllerCreate(createAdGroupDto: createAdGroupDto) { (response, error) in
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
 **createAdGroupDto** | [**CreateAdGroupDto**](CreateAdGroupDto.md) |  | 

### Return type

[**AdGroup**](AdGroup.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adGroupControllerDelete**
```swift
    open class func adGroupControllerDelete(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

AdGroupAPI.adGroupControllerDelete(id: id) { (response, error) in
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

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adGroupControllerFetchAdGroupProducts**
```swift
    open class func adGroupControllerFetchAdGroupProducts(id: String, orderBy: [String]? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: AdGroupControllerFetchAdGroupProducts200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let orderBy = ["inner_example"] // [String] | AdGroupProductSortOption (optional)
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

AdGroupAPI.adGroupControllerFetchAdGroupProducts(id: id, orderBy: orderBy, limit: limit, offset: offset) { (response, error) in
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
 **orderBy** | [**[String]**](String.md) | AdGroupProductSortOption | [optional] 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**AdGroupControllerFetchAdGroupProducts200Response**](AdGroupControllerFetchAdGroupProducts200Response.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adGroupControllerFetchAdGroups**
```swift
    open class func adGroupControllerFetchAdGroups(orderBy: [String]? = nil, campaignId: String? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: AdGroupControllerFetchAdGroups200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let orderBy = ["inner_example"] // [String] | AdGroupSortOption (optional)
let campaignId = "campaignId_example" // String |  (optional)
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

AdGroupAPI.adGroupControllerFetchAdGroups(orderBy: orderBy, campaignId: campaignId, limit: limit, offset: offset) { (response, error) in
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
 **orderBy** | [**[String]**](String.md) | AdGroupSortOption | [optional] 
 **campaignId** | **String** |  | [optional] 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**AdGroupControllerFetchAdGroups200Response**](AdGroupControllerFetchAdGroups200Response.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adGroupControllerFetchAllBudget**
```swift
    open class func adGroupControllerFetchAllBudget(completion: @escaping (_ data: [FetchAdGroupBudgetResponseDto]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


AdGroupAPI.adGroupControllerFetchAllBudget() { (response, error) in
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

[**[FetchAdGroupBudgetResponseDto]**](FetchAdGroupBudgetResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adGroupControllerFetchManyAdGroupTitles**
```swift
    open class func adGroupControllerFetchManyAdGroupTitles(campaignIds: [String]? = nil, title: String? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: [FetchAdGroupTitleResponseDto]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let campaignIds = ["inner_example"] // [String] |  (optional)
let title = "title_example" // String |  (optional)
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

AdGroupAPI.adGroupControllerFetchManyAdGroupTitles(campaignIds: campaignIds, title: title, limit: limit, offset: offset) { (response, error) in
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
 **campaignIds** | [**[String]**](String.md) |  | [optional] 
 **title** | **String** |  | [optional] 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**[FetchAdGroupTitleResponseDto]**](FetchAdGroupTitleResponseDto.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adGroupControllerFetchManyAdGroupsOfStore**
```swift
    open class func adGroupControllerFetchManyAdGroupsOfStore(reviewStatus: AdGroupReviewStatus? = nil, orderBy: [String]? = nil, adGroupIds: [String]? = nil, sellerIds: [String]? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: AdGroupControllerFetchManyAdGroupsOfStore200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let reviewStatus = AdGroupReviewStatus() // AdGroupReviewStatus |  (optional)
let orderBy = ["inner_example"] // [String] | AdGroupOfStoreSortOption (optional)
let adGroupIds = ["inner_example"] // [String] |  (optional)
let sellerIds = ["inner_example"] // [String] |  (optional)
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

AdGroupAPI.adGroupControllerFetchManyAdGroupsOfStore(reviewStatus: reviewStatus, orderBy: orderBy, adGroupIds: adGroupIds, sellerIds: sellerIds, limit: limit, offset: offset) { (response, error) in
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
 **reviewStatus** | [**AdGroupReviewStatus**](.md) |  | [optional] 
 **orderBy** | [**[String]**](String.md) | AdGroupOfStoreSortOption | [optional] 
 **adGroupIds** | [**[String]**](String.md) |  | [optional] 
 **sellerIds** | [**[String]**](String.md) |  | [optional] 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**AdGroupControllerFetchManyAdGroupsOfStore200Response**](AdGroupControllerFetchManyAdGroupsOfStore200Response.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adGroupControllerFetchOne**
```swift
    open class func adGroupControllerFetchOne(id: String, completion: @escaping (_ data: FetchAdGroupResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

AdGroupAPI.adGroupControllerFetchOne(id: id) { (response, error) in
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

[**FetchAdGroupResponseDto**](FetchAdGroupResponseDto.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adGroupControllerUpdate**
```swift
    open class func adGroupControllerUpdate(id: String, updateAdGroupDto: UpdateAdGroupDto, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let updateAdGroupDto = UpdateAdGroupDto(maxBudgetPerDay: 123, totalBudgetInPeriod: 123, budgetType: AdGroupBudgetType(), title: "title_example", activated: false, productIds: ["productIds_example"], startsAt: Date(), endsAt: Date(), targetValueIds: ["targetValueIds_example"]) // UpdateAdGroupDto | 

AdGroupAPI.adGroupControllerUpdate(id: id, updateAdGroupDto: updateAdGroupDto) { (response, error) in
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
 **updateAdGroupDto** | [**UpdateAdGroupDto**](UpdateAdGroupDto.md) |  | 

### Return type

Void (empty response body)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adGroupControllerUpdateBudget**
```swift
    open class func adGroupControllerUpdateBudget(updateUsedBudgetDto: UpdateUsedBudgetDto, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let updateUsedBudgetDto = UpdateUsedBudgetDto(budgetCharges: [BudgetCharge(requestId: "requestId_example", adsetId: "adsetId_example", adsetType: "adsetType_example", campaignId: "campaignId_example", adGroupId: "adGroupId_example", bidPrice: 123, storeId: "storeId_example", sellerId: "sellerId_example", advertiseTimestamp: 123, actionTimestamp: 123, timestamp: 123)]) // UpdateUsedBudgetDto | 

AdGroupAPI.adGroupControllerUpdateBudget(updateUsedBudgetDto: updateUsedBudgetDto) { (response, error) in
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
 **updateUsedBudgetDto** | [**UpdateUsedBudgetDto**](UpdateUsedBudgetDto.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adGroupReviewControllerFetchAdGroupReviewCount**
```swift
    open class func adGroupReviewControllerFetchAdGroupReviewCount(completion: @escaping (_ data: FetchAdGroupReviewCountResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


AdGroupAPI.adGroupReviewControllerFetchAdGroupReviewCount() { (response, error) in
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

[**FetchAdGroupReviewCountResponseDto**](FetchAdGroupReviewCountResponseDto.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adGroupReviewControllerFetchAdGroupReviewDetail**
```swift
    open class func adGroupReviewControllerFetchAdGroupReviewDetail(id: String, completion: @escaping (_ data: FetchAdGroupReviewDetailResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

AdGroupAPI.adGroupReviewControllerFetchAdGroupReviewDetail(id: id) { (response, error) in
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

[**FetchAdGroupReviewDetailResponseDto**](FetchAdGroupReviewDetailResponseDto.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adGroupReviewControllerFetchAdGroupReviewHistories**
```swift
    open class func adGroupReviewControllerFetchAdGroupReviewHistories(adGroupId: String, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: AdGroupReviewControllerFetchAdGroupReviewHistories200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let adGroupId = "adGroupId_example" // String | 
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

AdGroupAPI.adGroupReviewControllerFetchAdGroupReviewHistories(adGroupId: adGroupId, limit: limit, offset: offset) { (response, error) in
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
 **adGroupId** | **String** |  | 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**AdGroupReviewControllerFetchAdGroupReviewHistories200Response**](AdGroupReviewControllerFetchAdGroupReviewHistories200Response.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adGroupReviewControllerProcessAdGroupReview**
```swift
    open class func adGroupReviewControllerProcessAdGroupReview(id: String, processAdGroupReviewDto: ProcessAdGroupReviewDto, completion: @escaping (_ data: ProcessAdGroupReviewResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let processAdGroupReviewDto = ProcessAdGroupReviewDto(targetStatus: AdGroupReviewTargetStatus(), comment: "comment_example") // ProcessAdGroupReviewDto | 

AdGroupAPI.adGroupReviewControllerProcessAdGroupReview(id: id, processAdGroupReviewDto: processAdGroupReviewDto) { (response, error) in
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
 **processAdGroupReviewDto** | [**ProcessAdGroupReviewDto**](ProcessAdGroupReviewDto.md) |  | 

### Return type

[**ProcessAdGroupReviewResponseDto**](ProcessAdGroupReviewResponseDto.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adGroupReviewControllerRequestAdGroupReview**
```swift
    open class func adGroupReviewControllerRequestAdGroupReview(adGroupId: String, completion: @escaping (_ data: RequestAdGroupReviewResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let adGroupId = "adGroupId_example" // String | 

AdGroupAPI.adGroupReviewControllerRequestAdGroupReview(adGroupId: adGroupId) { (response, error) in
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
 **adGroupId** | **String** |  | 

### Return type

[**RequestAdGroupReviewResponseDto**](RequestAdGroupReviewResponseDto.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adGroupTargetControllerCreateAdGroupTargetKeys**
```swift
    open class func adGroupTargetControllerCreateAdGroupTargetKeys(createAdGroupTargetKeyRequestDto: CreateAdGroupTargetKeyRequestDto, completion: @escaping (_ data: CreateAdGroupTargetKeyResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createAdGroupTargetKeyRequestDto = CreateAdGroupTargetKeyRequestDto(name: "name_example", label: "label_example") // CreateAdGroupTargetKeyRequestDto | 

AdGroupAPI.adGroupTargetControllerCreateAdGroupTargetKeys(createAdGroupTargetKeyRequestDto: createAdGroupTargetKeyRequestDto) { (response, error) in
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
 **createAdGroupTargetKeyRequestDto** | [**CreateAdGroupTargetKeyRequestDto**](CreateAdGroupTargetKeyRequestDto.md) |  | 

### Return type

[**CreateAdGroupTargetKeyResponseDto**](CreateAdGroupTargetKeyResponseDto.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adGroupTargetControllerCreateAdGroupTargetValue**
```swift
    open class func adGroupTargetControllerCreateAdGroupTargetValue(id: String, createAdGroupTargetValueRequestDto: CreateAdGroupTargetValueRequestDto, completion: @escaping (_ data: CreateAdGroupTargetValueResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let createAdGroupTargetValueRequestDto = CreateAdGroupTargetValueRequestDto(value: "value_example", label: "label_example") // CreateAdGroupTargetValueRequestDto | 

AdGroupAPI.adGroupTargetControllerCreateAdGroupTargetValue(id: id, createAdGroupTargetValueRequestDto: createAdGroupTargetValueRequestDto) { (response, error) in
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
 **createAdGroupTargetValueRequestDto** | [**CreateAdGroupTargetValueRequestDto**](CreateAdGroupTargetValueRequestDto.md) |  | 

### Return type

[**CreateAdGroupTargetValueResponseDto**](CreateAdGroupTargetValueResponseDto.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adGroupTargetControllerFetchAdGroupTargetKeys**
```swift
    open class func adGroupTargetControllerFetchAdGroupTargetKeys(storeId: String, completion: @escaping (_ data: FetchAdGroupTargetKeysResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let storeId = "storeId_example" // String | 

AdGroupAPI.adGroupTargetControllerFetchAdGroupTargetKeys(storeId: storeId) { (response, error) in
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
 **storeId** | **String** |  | 

### Return type

[**FetchAdGroupTargetKeysResponseDto**](FetchAdGroupTargetKeysResponseDto.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

