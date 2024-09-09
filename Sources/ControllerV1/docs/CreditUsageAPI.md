# CreditUsageAPI

All URIs are relative to *https://api-dev.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**creditUsageControllerExtractCsvFromCampaignsWithCreditUsed**](CreditUsageAPI.md#creditusagecontrollerextractcsvfromcampaignswithcreditused) | **GET** /credit-usages/campaigns/in-month/csv | 
[**creditUsageControllerExtractCsvFromDailyCreditUsedPerAdGroup**](CreditUsageAPI.md#creditusagecontrollerextractcsvfromdailycreditusedperadgroup) | **GET** /credit-usages/ad-groups/{id}/daily/csv | 
[**creditUsageControllerFetchAdGroupCampaignWithCreditUsedDto**](CreditUsageAPI.md#creditusagecontrollerfetchadgroupcampaignwithcredituseddto) | **GET** /credit-usages/ad-groups/{id}/with-campaign/in-month | 
[**creditUsageControllerFetchAdGroupsWithCreditUsed**](CreditUsageAPI.md#creditusagecontrollerfetchadgroupswithcreditused) | **GET** /credit-usages/ad-groups | 
[**creditUsageControllerFetchAdGroupsWithCreditUsedInCampaign**](CreditUsageAPI.md#creditusagecontrollerfetchadgroupswithcreditusedincampaign) | **GET** /credit-usages/campaigns/{id}/ad-groups/in-month | 
[**creditUsageControllerFetchCampaignWithCreditUsed**](CreditUsageAPI.md#creditusagecontrollerfetchcampaignwithcreditused) | **GET** /credit-usages/campaigns/{id}/in-month | 
[**creditUsageControllerFetchCampaignsWithCreditUsed**](CreditUsageAPI.md#creditusagecontrollerfetchcampaignswithcreditused) | **GET** /credit-usages/campaigns/in-month | 
[**creditUsageControllerFetchCreditUsedSum**](CreditUsageAPI.md#creditusagecontrollerfetchcreditusedsum) | **GET** /credit-usages/sum/in-month | 
[**creditUsageControllerFetchDailyCreditUsedPerAdGroup**](CreditUsageAPI.md#creditusagecontrollerfetchdailycreditusedperadgroup) | **GET** /credit-usages/ad-groups/{id}/daily | 


# **creditUsageControllerExtractCsvFromCampaignsWithCreditUsed**
```swift
    open class func creditUsageControllerExtractCsvFromCampaignsWithCreditUsed(year: Double, month: Double, keyword: String? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: ExtractCsvResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let year = 987 // Double | 
let month = 987 // Double | 
let keyword = "keyword_example" // String |  (optional)
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

CreditUsageAPI.creditUsageControllerExtractCsvFromCampaignsWithCreditUsed(year: year, month: month, keyword: keyword, limit: limit, offset: offset) { (response, error) in
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
 **year** | **Double** |  | 
 **month** | **Double** |  | 
 **keyword** | **String** |  | [optional] 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**ExtractCsvResponseDto**](ExtractCsvResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditUsageControllerExtractCsvFromDailyCreditUsedPerAdGroup**
```swift
    open class func creditUsageControllerExtractCsvFromDailyCreditUsedPerAdGroup(id: String, year: Double, month: Double, completion: @escaping (_ data: ExtractCsvResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let year = 987 // Double | 
let month = 987 // Double | 

CreditUsageAPI.creditUsageControllerExtractCsvFromDailyCreditUsedPerAdGroup(id: id, year: year, month: month) { (response, error) in
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
 **year** | **Double** |  | 
 **month** | **Double** |  | 

### Return type

[**ExtractCsvResponseDto**](ExtractCsvResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditUsageControllerFetchAdGroupCampaignWithCreditUsedDto**
```swift
    open class func creditUsageControllerFetchAdGroupCampaignWithCreditUsedDto(id: String, year: Double, month: Double, completion: @escaping (_ data: FetchAdGroupCampaignWithCreditUsedResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let year = 987 // Double | 
let month = 987 // Double | 

CreditUsageAPI.creditUsageControllerFetchAdGroupCampaignWithCreditUsedDto(id: id, year: year, month: month) { (response, error) in
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
 **year** | **Double** |  | 
 **month** | **Double** |  | 

### Return type

[**FetchAdGroupCampaignWithCreditUsedResponseDto**](FetchAdGroupCampaignWithCreditUsedResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditUsageControllerFetchAdGroupsWithCreditUsed**
```swift
    open class func creditUsageControllerFetchAdGroupsWithCreditUsed(year: Double, month: Double, activated: Bool? = nil, keyword: String? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: CreditUsageControllerFetchAdGroupsWithCreditUsed200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let year = 987 // Double | 
let month = 987 // Double | 
let activated = true // Bool |  (optional)
let keyword = "keyword_example" // String |  (optional)
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

CreditUsageAPI.creditUsageControllerFetchAdGroupsWithCreditUsed(year: year, month: month, activated: activated, keyword: keyword, limit: limit, offset: offset) { (response, error) in
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
 **year** | **Double** |  | 
 **month** | **Double** |  | 
 **activated** | **Bool** |  | [optional] 
 **keyword** | **String** |  | [optional] 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**CreditUsageControllerFetchAdGroupsWithCreditUsed200Response**](CreditUsageControllerFetchAdGroupsWithCreditUsed200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditUsageControllerFetchAdGroupsWithCreditUsedInCampaign**
```swift
    open class func creditUsageControllerFetchAdGroupsWithCreditUsedInCampaign(id: String, year: Double, month: Double, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: CreditUsageControllerFetchAdGroupsWithCreditUsedInCampaign200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let year = 987 // Double | 
let month = 987 // Double | 
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

CreditUsageAPI.creditUsageControllerFetchAdGroupsWithCreditUsedInCampaign(id: id, year: year, month: month, limit: limit, offset: offset) { (response, error) in
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
 **year** | **Double** |  | 
 **month** | **Double** |  | 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**CreditUsageControllerFetchAdGroupsWithCreditUsedInCampaign200Response**](CreditUsageControllerFetchAdGroupsWithCreditUsedInCampaign200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditUsageControllerFetchCampaignWithCreditUsed**
```swift
    open class func creditUsageControllerFetchCampaignWithCreditUsed(id: String, year: Double, month: Double, completion: @escaping (_ data: FetchCampaignWithCreditUsedResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let year = 987 // Double | 
let month = 987 // Double | 

CreditUsageAPI.creditUsageControllerFetchCampaignWithCreditUsed(id: id, year: year, month: month) { (response, error) in
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
 **year** | **Double** |  | 
 **month** | **Double** |  | 

### Return type

[**FetchCampaignWithCreditUsedResponseDto**](FetchCampaignWithCreditUsedResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditUsageControllerFetchCampaignsWithCreditUsed**
```swift
    open class func creditUsageControllerFetchCampaignsWithCreditUsed(year: Double, month: Double, keyword: String? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: CreditUsageControllerFetchCampaignsWithCreditUsed200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let year = 987 // Double | 
let month = 987 // Double | 
let keyword = "keyword_example" // String |  (optional)
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

CreditUsageAPI.creditUsageControllerFetchCampaignsWithCreditUsed(year: year, month: month, keyword: keyword, limit: limit, offset: offset) { (response, error) in
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
 **year** | **Double** |  | 
 **month** | **Double** |  | 
 **keyword** | **String** |  | [optional] 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**CreditUsageControllerFetchCampaignsWithCreditUsed200Response**](CreditUsageControllerFetchCampaignsWithCreditUsed200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditUsageControllerFetchCreditUsedSum**
```swift
    open class func creditUsageControllerFetchCreditUsedSum(year: Double, month: Double, completion: @escaping (_ data: FetchCreditUsedSumResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let year = 987 // Double | 
let month = 987 // Double | 

CreditUsageAPI.creditUsageControllerFetchCreditUsedSum(year: year, month: month) { (response, error) in
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
 **year** | **Double** |  | 
 **month** | **Double** |  | 

### Return type

[**FetchCreditUsedSumResponseDto**](FetchCreditUsedSumResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditUsageControllerFetchDailyCreditUsedPerAdGroup**
```swift
    open class func creditUsageControllerFetchDailyCreditUsedPerAdGroup(id: String, year: Double, month: Double, completion: @escaping (_ data: DailyCreditUsedPerAdGroupResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let year = 987 // Double | 
let month = 987 // Double | 

CreditUsageAPI.creditUsageControllerFetchDailyCreditUsedPerAdGroup(id: id, year: year, month: month) { (response, error) in
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
 **year** | **Double** |  | 
 **month** | **Double** |  | 

### Return type

[**DailyCreditUsedPerAdGroupResponseDto**](DailyCreditUsedPerAdGroupResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

