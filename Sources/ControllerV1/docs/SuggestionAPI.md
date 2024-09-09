# SuggestionAPI

All URIs are relative to *https://api.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**advertisementsControllerAdvertiseBanners**](SuggestionAPI.md#advertisementscontrolleradvertisebanners) | **POST** /v1/advertisements/banners | 
[**advertisementsControllerAdvertiseProducts**](SuggestionAPI.md#advertisementscontrolleradvertiseproducts) | **POST** /v1/advertisements/products | 
[**recommendationsControllerRecommendBanners**](SuggestionAPI.md#recommendationscontrollerrecommendbanners) | **POST** /v1/recommendations/banners | 
[**recommendationsControllerRecommendProducts**](SuggestionAPI.md#recommendationscontrollerrecommendproducts) | **POST** /v1/recommendations/products | 
[**suggestionControllerAdvertiseBanners**](SuggestionAPI.md#suggestioncontrolleradvertisebanners) | **POST** /advertisements/banners | 
[**suggestionControllerAdvertiseProducts**](SuggestionAPI.md#suggestioncontrolleradvertiseproducts) | **POST** /advertisements/products | 
[**suggestionControllerRecommendBanners**](SuggestionAPI.md#suggestioncontrollerrecommendbanners) | **POST** /recommendations/banners | 
[**suggestionControllerRecommendProducts**](SuggestionAPI.md#suggestioncontrollerrecommendproducts) | **POST** /recommendations/products | 


# **advertisementsControllerAdvertiseBanners**
```swift
    open class func advertisementsControllerAdvertiseBanners(bannerSuggestionRequestDto: BannerSuggestionRequestDto, completion: @escaping (_ data: BannerSuggestionResponseDto?, _ error: Error?) -> Void)
```



Fetch a personalized banner for advertisement.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let bannerSuggestionRequestDto = BannerSuggestionRequestDto(sessionId: "sessionId_example", deviceId: "deviceId_example", customerId: "customerId_example", sdkVersion: "sdkVersion_example", placementId: "placementId_example", placementPositionX: 123, placementPositionY: 123, fromAgent: false, targets: [SuggestionRequestTarget(keyName: "keyName_example", values: ["values_example"])], userAgent: "userAgent_example", appVersion: "appVersion_example") // BannerSuggestionRequestDto | 

// 
SuggestionAPI.advertisementsControllerAdvertiseBanners(bannerSuggestionRequestDto: bannerSuggestionRequestDto) { (response, error) in
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
 **bannerSuggestionRequestDto** | [**BannerSuggestionRequestDto**](BannerSuggestionRequestDto.md) |  | 

### Return type

[**BannerSuggestionResponseDto**](BannerSuggestionResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **advertisementsControllerAdvertiseProducts**
```swift
    open class func advertisementsControllerAdvertiseProducts(productSuggestionRequestDto: ProductSuggestionRequestDto, completion: @escaping (_ data: ProductSuggestionResponseDto?, _ error: Error?) -> Void)
```



Fetch a personalized product for advertisement.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productSuggestionRequestDto = ProductSuggestionRequestDto(sessionId: "sessionId_example", deviceId: "deviceId_example", customerId: "customerId_example", sdkVersion: "sdkVersion_example", placementId: "placementId_example", placementPositionX: 123, placementPositionY: 123, fromAgent: false, clientId: "clientId_example", excludingProductIds: ["excludingProductIds_example"], baselineProductIds: ["baselineProductIds_example"], categoryId: "categoryId_example", filters: ["TODO"], targets: [SuggestionRequestTarget(keyName: "keyName_example", values: ["values_example"])], userAgent: "userAgent_example", appVersion: "appVersion_example") // ProductSuggestionRequestDto | 

// 
SuggestionAPI.advertisementsControllerAdvertiseProducts(productSuggestionRequestDto: productSuggestionRequestDto) { (response, error) in
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
 **productSuggestionRequestDto** | [**ProductSuggestionRequestDto**](ProductSuggestionRequestDto.md) |  | 

### Return type

[**ProductSuggestionResponseDto**](ProductSuggestionResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recommendationsControllerRecommendBanners**
```swift
    open class func recommendationsControllerRecommendBanners(bannerSuggestionRequestDto: BannerSuggestionRequestDto, completion: @escaping (_ data: BannerSuggestionResponseDto?, _ error: Error?) -> Void)
```



Fetch a personalized banner for recommendation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let bannerSuggestionRequestDto = BannerSuggestionRequestDto(sessionId: "sessionId_example", deviceId: "deviceId_example", customerId: "customerId_example", sdkVersion: "sdkVersion_example", placementId: "placementId_example", placementPositionX: 123, placementPositionY: 123, fromAgent: false, targets: [SuggestionRequestTarget(keyName: "keyName_example", values: ["values_example"])], userAgent: "userAgent_example", appVersion: "appVersion_example") // BannerSuggestionRequestDto | 

// 
SuggestionAPI.recommendationsControllerRecommendBanners(bannerSuggestionRequestDto: bannerSuggestionRequestDto) { (response, error) in
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
 **bannerSuggestionRequestDto** | [**BannerSuggestionRequestDto**](BannerSuggestionRequestDto.md) |  | 

### Return type

[**BannerSuggestionResponseDto**](BannerSuggestionResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recommendationsControllerRecommendProducts**
```swift
    open class func recommendationsControllerRecommendProducts(productSuggestionRequestDto: ProductSuggestionRequestDto, completion: @escaping (_ data: ProductSuggestionResponseDto?, _ error: Error?) -> Void)
```



Fetch a personalized product for recommendation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productSuggestionRequestDto = ProductSuggestionRequestDto(sessionId: "sessionId_example", deviceId: "deviceId_example", customerId: "customerId_example", sdkVersion: "sdkVersion_example", placementId: "placementId_example", placementPositionX: 123, placementPositionY: 123, fromAgent: false, clientId: "clientId_example", excludingProductIds: ["excludingProductIds_example"], baselineProductIds: ["baselineProductIds_example"], categoryId: "categoryId_example", filters: ["TODO"], targets: [SuggestionRequestTarget(keyName: "keyName_example", values: ["values_example"])], userAgent: "userAgent_example", appVersion: "appVersion_example") // ProductSuggestionRequestDto | 

// 
SuggestionAPI.recommendationsControllerRecommendProducts(productSuggestionRequestDto: productSuggestionRequestDto) { (response, error) in
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
 **productSuggestionRequestDto** | [**ProductSuggestionRequestDto**](ProductSuggestionRequestDto.md) |  | 

### Return type

[**ProductSuggestionResponseDto**](ProductSuggestionResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **suggestionControllerAdvertiseBanners**
```swift
    open class func suggestionControllerAdvertiseBanners(bannerSuggestionRequestDto: BannerSuggestionRequestDto, completion: @escaping (_ data: BannerSuggestionResponseDto?, _ error: Error?) -> Void)
```



Fetch a personalized banner for advertisement.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let bannerSuggestionRequestDto = BannerSuggestionRequestDto(sessionId: "sessionId_example", deviceId: "deviceId_example", customerId: "customerId_example", sdkVersion: "sdkVersion_example", placementId: "placementId_example", placementPositionX: 123, placementPositionY: 123, fromAgent: false, targets: [SuggestionRequestTarget(keyName: "keyName_example", values: ["values_example"])], userAgent: "userAgent_example", appVersion: "appVersion_example") // BannerSuggestionRequestDto | 

// 
SuggestionAPI.suggestionControllerAdvertiseBanners(bannerSuggestionRequestDto: bannerSuggestionRequestDto) { (response, error) in
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
 **bannerSuggestionRequestDto** | [**BannerSuggestionRequestDto**](BannerSuggestionRequestDto.md) |  | 

### Return type

[**BannerSuggestionResponseDto**](BannerSuggestionResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **suggestionControllerAdvertiseProducts**
```swift
    open class func suggestionControllerAdvertiseProducts(productSuggestionRequestDto: ProductSuggestionRequestDto, completion: @escaping (_ data: ProductSuggestionResponseDto?, _ error: Error?) -> Void)
```



Fetch a personalized product for advertisement.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productSuggestionRequestDto = ProductSuggestionRequestDto(sessionId: "sessionId_example", deviceId: "deviceId_example", customerId: "customerId_example", sdkVersion: "sdkVersion_example", placementId: "placementId_example", placementPositionX: 123, placementPositionY: 123, fromAgent: false, clientId: "clientId_example", excludingProductIds: ["excludingProductIds_example"], baselineProductIds: ["baselineProductIds_example"], categoryId: "categoryId_example", filters: ["TODO"], targets: [SuggestionRequestTarget(keyName: "keyName_example", values: ["values_example"])], userAgent: "userAgent_example", appVersion: "appVersion_example") // ProductSuggestionRequestDto | 

// 
SuggestionAPI.suggestionControllerAdvertiseProducts(productSuggestionRequestDto: productSuggestionRequestDto) { (response, error) in
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
 **productSuggestionRequestDto** | [**ProductSuggestionRequestDto**](ProductSuggestionRequestDto.md) |  | 

### Return type

[**ProductSuggestionResponseDto**](ProductSuggestionResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **suggestionControllerRecommendBanners**
```swift
    open class func suggestionControllerRecommendBanners(bannerSuggestionRequestDto: BannerSuggestionRequestDto, completion: @escaping (_ data: BannerSuggestionResponseDto?, _ error: Error?) -> Void)
```



Fetch a personalized banner for recommendation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let bannerSuggestionRequestDto = BannerSuggestionRequestDto(sessionId: "sessionId_example", deviceId: "deviceId_example", customerId: "customerId_example", sdkVersion: "sdkVersion_example", placementId: "placementId_example", placementPositionX: 123, placementPositionY: 123, fromAgent: false, targets: [SuggestionRequestTarget(keyName: "keyName_example", values: ["values_example"])], userAgent: "userAgent_example", appVersion: "appVersion_example") // BannerSuggestionRequestDto | 

// 
SuggestionAPI.suggestionControllerRecommendBanners(bannerSuggestionRequestDto: bannerSuggestionRequestDto) { (response, error) in
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
 **bannerSuggestionRequestDto** | [**BannerSuggestionRequestDto**](BannerSuggestionRequestDto.md) |  | 

### Return type

[**BannerSuggestionResponseDto**](BannerSuggestionResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **suggestionControllerRecommendProducts**
```swift
    open class func suggestionControllerRecommendProducts(productSuggestionRequestDto: ProductSuggestionRequestDto, completion: @escaping (_ data: ProductSuggestionResponseDto?, _ error: Error?) -> Void)
```



Fetch a personalized product for recommendation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let productSuggestionRequestDto = ProductSuggestionRequestDto(sessionId: "sessionId_example", deviceId: "deviceId_example", customerId: "customerId_example", sdkVersion: "sdkVersion_example", placementId: "placementId_example", placementPositionX: 123, placementPositionY: 123, fromAgent: false, clientId: "clientId_example", excludingProductIds: ["excludingProductIds_example"], baselineProductIds: ["baselineProductIds_example"], categoryId: "categoryId_example", filters: ["TODO"], targets: [SuggestionRequestTarget(keyName: "keyName_example", values: ["values_example"])], userAgent: "userAgent_example", appVersion: "appVersion_example") // ProductSuggestionRequestDto | 

// 
SuggestionAPI.suggestionControllerRecommendProducts(productSuggestionRequestDto: productSuggestionRequestDto) { (response, error) in
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
 **productSuggestionRequestDto** | [**ProductSuggestionRequestDto**](ProductSuggestionRequestDto.md) |  | 

### Return type

[**ProductSuggestionResponseDto**](ProductSuggestionResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

