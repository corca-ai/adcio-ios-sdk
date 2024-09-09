# DashboardAPI

All URIs are relative to *https://api-dev.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dashboardControllerExtractCsvOnBannerDashboard**](DashboardAPI.md#dashboardcontrollerextractcsvonbannerdashboard) | **GET** /dashboard/banners/csv | 
[**dashboardControllerExtractCsvOnProductDashboard**](DashboardAPI.md#dashboardcontrollerextractcsvonproductdashboard) | **GET** /dashboard/products/csv | 
[**dashboardControllerFetchAdsetEfficienciesOnSellerAdGroupDashboard**](DashboardAPI.md#dashboardcontrollerfetchadsetefficienciesonselleradgroupdashboard) | **GET** /dashboard/campaigns/{campaignId}/ad-group-adset-efficiencies | 
[**dashboardControllerFetchListOnBannerDashboard**](DashboardAPI.md#dashboardcontrollerfetchlistonbannerdashboard) | **GET** /dashboard/banners | 
[**dashboardControllerFetchListOnProductDashboard**](DashboardAPI.md#dashboardcontrollerfetchlistonproductdashboard) | **GET** /dashboard/products | 
[**dashboardControllerFetchListOnSellerAdGroupDashboard**](DashboardAPI.md#dashboardcontrollerfetchlistonselleradgroupdashboard) | **GET** /dashboard/campaigns/{campaignId}/ad-groups | 
[**dashboardControllerFetchMetricsOnBannerDashboard**](DashboardAPI.md#dashboardcontrollerfetchmetricsonbannerdashboard) | **GET** /dashboard/metric/banners | 
[**dashboardControllerFetchMetricsOnProductDashboard**](DashboardAPI.md#dashboardcontrollerfetchmetricsonproductdashboard) | **GET** /dashboard/metric/products | 
[**dashboardControllerFetchMetricsOnSellerAdGroupDashboard**](DashboardAPI.md#dashboardcontrollerfetchmetricsonselleradgroupdashboard) | **GET** /dashboard/campaigns/{campaignId}/ad-groups/metric | 


# **dashboardControllerExtractCsvOnBannerDashboard**
```swift
    open class func dashboardControllerExtractCsvOnBannerDashboard(placementIds: [String], startDate: Date, endDate: Date, orderBy: [String]? = nil, bannerIds: [String]? = nil, completion: @escaping (_ data: ExtractCsvOnDashboardResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let placementIds = ["inner_example"] // [String] | 
let startDate = Date() // Date | 
let endDate = Date() // Date | 
let orderBy = ["inner_example"] // [String] | DashboardItemSortOption (optional)
let bannerIds = ["inner_example"] // [String] |  (optional)

DashboardAPI.dashboardControllerExtractCsvOnBannerDashboard(placementIds: placementIds, startDate: startDate, endDate: endDate, orderBy: orderBy, bannerIds: bannerIds) { (response, error) in
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
 **placementIds** | [**[String]**](String.md) |  | 
 **startDate** | **Date** |  | 
 **endDate** | **Date** |  | 
 **orderBy** | [**[String]**](String.md) | DashboardItemSortOption | [optional] 
 **bannerIds** | [**[String]**](String.md) |  | [optional] 

### Return type

[**ExtractCsvOnDashboardResponseDto**](ExtractCsvOnDashboardResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardControllerExtractCsvOnProductDashboard**
```swift
    open class func dashboardControllerExtractCsvOnProductDashboard(placementIds: [String], startDate: Date, endDate: Date, orderBy: [String]? = nil, productIds: [String]? = nil, completion: @escaping (_ data: ExtractCsvOnDashboardResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let placementIds = ["inner_example"] // [String] | 
let startDate = Date() // Date | 
let endDate = Date() // Date | 
let orderBy = ["inner_example"] // [String] | DashboardItemSortOption (optional)
let productIds = ["inner_example"] // [String] |  (optional)

DashboardAPI.dashboardControllerExtractCsvOnProductDashboard(placementIds: placementIds, startDate: startDate, endDate: endDate, orderBy: orderBy, productIds: productIds) { (response, error) in
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
 **placementIds** | [**[String]**](String.md) |  | 
 **startDate** | **Date** |  | 
 **endDate** | **Date** |  | 
 **orderBy** | [**[String]**](String.md) | DashboardItemSortOption | [optional] 
 **productIds** | [**[String]**](String.md) |  | [optional] 

### Return type

[**ExtractCsvOnDashboardResponseDto**](ExtractCsvOnDashboardResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardControllerFetchAdsetEfficienciesOnSellerAdGroupDashboard**
```swift
    open class func dashboardControllerFetchAdsetEfficienciesOnSellerAdGroupDashboard(campaignId: String, startDate: Date, endDate: Date, timezone: Timezone_dashboardControllerFetchAdsetEfficienciesOnSellerAdGroupDashboard, orderBy: [String]? = nil, adGroupIds: [String]? = nil, completion: @escaping (_ data: FetchAdsetEfficienciesOnSellerAdGroupDashboardResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let campaignId = "campaignId_example" // String | 
let startDate = Date() // Date | 
let endDate = Date() // Date | 
let timezone = "timezone_example" // String | 
let orderBy = ["inner_example"] // [String] | AdGroupDashboardAdsetSortOption (optional)
let adGroupIds = ["inner_example"] // [String] |  (optional)

DashboardAPI.dashboardControllerFetchAdsetEfficienciesOnSellerAdGroupDashboard(campaignId: campaignId, startDate: startDate, endDate: endDate, timezone: timezone, orderBy: orderBy, adGroupIds: adGroupIds) { (response, error) in
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
 **campaignId** | **String** |  | 
 **startDate** | **Date** |  | 
 **endDate** | **Date** |  | 
 **timezone** | **String** |  | 
 **orderBy** | [**[String]**](String.md) | AdGroupDashboardAdsetSortOption | [optional] 
 **adGroupIds** | [**[String]**](String.md) |  | [optional] 

### Return type

[**FetchAdsetEfficienciesOnSellerAdGroupDashboardResponseDto**](FetchAdsetEfficienciesOnSellerAdGroupDashboardResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardControllerFetchListOnBannerDashboard**
```swift
    open class func dashboardControllerFetchListOnBannerDashboard(placementIds: [String], startDate: Date, endDate: Date, orderBy: [String]? = nil, bannerIds: [String]? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: DashboardControllerFetchListOnBannerDashboard200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let placementIds = ["inner_example"] // [String] | 
let startDate = Date() // Date | 
let endDate = Date() // Date | 
let orderBy = ["inner_example"] // [String] | DashboardItemSortOption (optional)
let bannerIds = ["inner_example"] // [String] |  (optional)
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

DashboardAPI.dashboardControllerFetchListOnBannerDashboard(placementIds: placementIds, startDate: startDate, endDate: endDate, orderBy: orderBy, bannerIds: bannerIds, limit: limit, offset: offset) { (response, error) in
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
 **placementIds** | [**[String]**](String.md) |  | 
 **startDate** | **Date** |  | 
 **endDate** | **Date** |  | 
 **orderBy** | [**[String]**](String.md) | DashboardItemSortOption | [optional] 
 **bannerIds** | [**[String]**](String.md) |  | [optional] 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**DashboardControllerFetchListOnBannerDashboard200Response**](DashboardControllerFetchListOnBannerDashboard200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardControllerFetchListOnProductDashboard**
```swift
    open class func dashboardControllerFetchListOnProductDashboard(placementIds: [String], startDate: Date, endDate: Date, orderBy: [String]? = nil, productIds: [String]? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: DashboardControllerFetchListOnProductDashboard200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let placementIds = ["inner_example"] // [String] | 
let startDate = Date() // Date | 
let endDate = Date() // Date | 
let orderBy = ["inner_example"] // [String] | DashboardItemSortOption (optional)
let productIds = ["inner_example"] // [String] |  (optional)
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

DashboardAPI.dashboardControllerFetchListOnProductDashboard(placementIds: placementIds, startDate: startDate, endDate: endDate, orderBy: orderBy, productIds: productIds, limit: limit, offset: offset) { (response, error) in
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
 **placementIds** | [**[String]**](String.md) |  | 
 **startDate** | **Date** |  | 
 **endDate** | **Date** |  | 
 **orderBy** | [**[String]**](String.md) | DashboardItemSortOption | [optional] 
 **productIds** | [**[String]**](String.md) |  | [optional] 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**DashboardControllerFetchListOnProductDashboard200Response**](DashboardControllerFetchListOnProductDashboard200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardControllerFetchListOnSellerAdGroupDashboard**
```swift
    open class func dashboardControllerFetchListOnSellerAdGroupDashboard(campaignId: String, startDate: Date, endDate: Date, timezone: Timezone_dashboardControllerFetchListOnSellerAdGroupDashboard, orderBy: [String]? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: DashboardControllerFetchListOnSellerAdGroupDashboard200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let campaignId = "campaignId_example" // String | 
let startDate = Date() // Date | 
let endDate = Date() // Date | 
let timezone = "timezone_example" // String | 
let orderBy = ["inner_example"] // [String] | AdGroupDashboardSortOption (optional)
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

DashboardAPI.dashboardControllerFetchListOnSellerAdGroupDashboard(campaignId: campaignId, startDate: startDate, endDate: endDate, timezone: timezone, orderBy: orderBy, limit: limit, offset: offset) { (response, error) in
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
 **campaignId** | **String** |  | 
 **startDate** | **Date** |  | 
 **endDate** | **Date** |  | 
 **timezone** | **String** |  | 
 **orderBy** | [**[String]**](String.md) | AdGroupDashboardSortOption | [optional] 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**DashboardControllerFetchListOnSellerAdGroupDashboard200Response**](DashboardControllerFetchListOnSellerAdGroupDashboard200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardControllerFetchMetricsOnBannerDashboard**
```swift
    open class func dashboardControllerFetchMetricsOnBannerDashboard(placementIds: [String], startDate: Date, endDate: Date, timezone: Timezone_dashboardControllerFetchMetricsOnBannerDashboard, bannerIds: [String]? = nil, completion: @escaping (_ data: FetchMetricsOnDashboardResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let placementIds = ["inner_example"] // [String] | 
let startDate = Date() // Date | 
let endDate = Date() // Date | 
let timezone = "timezone_example" // String | 
let bannerIds = ["inner_example"] // [String] |  (optional)

DashboardAPI.dashboardControllerFetchMetricsOnBannerDashboard(placementIds: placementIds, startDate: startDate, endDate: endDate, timezone: timezone, bannerIds: bannerIds) { (response, error) in
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
 **placementIds** | [**[String]**](String.md) |  | 
 **startDate** | **Date** |  | 
 **endDate** | **Date** |  | 
 **timezone** | **String** |  | 
 **bannerIds** | [**[String]**](String.md) |  | [optional] 

### Return type

[**FetchMetricsOnDashboardResponseDto**](FetchMetricsOnDashboardResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardControllerFetchMetricsOnProductDashboard**
```swift
    open class func dashboardControllerFetchMetricsOnProductDashboard(placementIds: [String], startDate: Date, endDate: Date, timezone: Timezone_dashboardControllerFetchMetricsOnProductDashboard, productIds: [String]? = nil, completion: @escaping (_ data: FetchMetricsOnDashboardResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let placementIds = ["inner_example"] // [String] | 
let startDate = Date() // Date | 
let endDate = Date() // Date | 
let timezone = "timezone_example" // String | 
let productIds = ["inner_example"] // [String] |  (optional)

DashboardAPI.dashboardControllerFetchMetricsOnProductDashboard(placementIds: placementIds, startDate: startDate, endDate: endDate, timezone: timezone, productIds: productIds) { (response, error) in
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
 **placementIds** | [**[String]**](String.md) |  | 
 **startDate** | **Date** |  | 
 **endDate** | **Date** |  | 
 **timezone** | **String** |  | 
 **productIds** | [**[String]**](String.md) |  | [optional] 

### Return type

[**FetchMetricsOnDashboardResponseDto**](FetchMetricsOnDashboardResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardControllerFetchMetricsOnSellerAdGroupDashboard**
```swift
    open class func dashboardControllerFetchMetricsOnSellerAdGroupDashboard(campaignId: String, startDate: Date, endDate: Date, timezone: Timezone_dashboardControllerFetchMetricsOnSellerAdGroupDashboard, adGroupIds: [String]? = nil, completion: @escaping (_ data: FetchMetricsOnSellerAdGroupDashboardResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let campaignId = "campaignId_example" // String | 
let startDate = Date() // Date | 
let endDate = Date() // Date | 
let timezone = "timezone_example" // String | 
let adGroupIds = ["inner_example"] // [String] |  (optional)

DashboardAPI.dashboardControllerFetchMetricsOnSellerAdGroupDashboard(campaignId: campaignId, startDate: startDate, endDate: endDate, timezone: timezone, adGroupIds: adGroupIds) { (response, error) in
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
 **campaignId** | **String** |  | 
 **startDate** | **Date** |  | 
 **endDate** | **Date** |  | 
 **timezone** | **String** |  | 
 **adGroupIds** | [**[String]**](String.md) |  | [optional] 

### Return type

[**FetchMetricsOnSellerAdGroupDashboardResponseDto**](FetchMetricsOnSellerAdGroupDashboardResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

