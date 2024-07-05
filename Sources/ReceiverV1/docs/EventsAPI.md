# EventsAPI

All URIs are relative to *https://receiver.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**eventsControllerOnAddToCart**](EventsAPI.md#eventscontrolleronaddtocart) | **POST** /events/add-to-cart | 
[**eventsControllerOnClick**](EventsAPI.md#eventscontrolleronclick) | **POST** /events/click | 
[**eventsControllerOnImpression**](EventsAPI.md#eventscontrolleronimpression) | **POST** /events/impression | 
[**eventsControllerOnPageView**](EventsAPI.md#eventscontrolleronpageview) | **POST** /events/view | 
[**eventsControllerOnPurchase**](EventsAPI.md#eventscontrolleronpurchase) | **POST** /events/purchase | 


# **eventsControllerOnAddToCart**
```swift
    open class func eventsControllerOnAddToCart(trackAddToCartRequestDto: TrackAddToCartRequestDto, completion: @escaping (_ data: TrackResponseDto?, _ error: Error?) -> Void)
```



Log when the customer adds a product to the cart.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let trackAddToCartRequestDto = TrackAddToCartRequestDto(storeId: "storeId_example", sessionId: "sessionId_example", deviceId: "deviceId_example", customerId: "customerId_example", sdkVersion: "sdkVersion_example", requestId: "requestId_example", productIdOnStore: "productIdOnStore_example", adsetId: "adsetId_example", categoryIdOnStore: "categoryIdOnStore_example", cartId: "cartId_example", quantity: 123, userAgent: "userAgent_example") // TrackAddToCartRequestDto | 

// 
EventsAPI.eventsControllerOnAddToCart(trackAddToCartRequestDto: trackAddToCartRequestDto) { (response, error) in
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
 **trackAddToCartRequestDto** | [**TrackAddToCartRequestDto**](TrackAddToCartRequestDto.md) |  | 

### Return type

[**TrackResponseDto**](TrackResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **eventsControllerOnClick**
```swift
    open class func eventsControllerOnClick(trackClickRequestDto: TrackClickRequestDto, completion: @escaping (_ data: TrackResponseDto?, _ error: Error?) -> Void)
```



Log a click.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let trackClickRequestDto = TrackClickRequestDto(storeId: "storeId_example", sessionId: "sessionId_example", deviceId: "deviceId_example", customerId: "customerId_example", sdkVersion: "sdkVersion_example", requestId: "requestId_example", productIdOnStore: "productIdOnStore_example", adsetId: "adsetId_example", userAgent: "userAgent_example") // TrackClickRequestDto | 

// 
EventsAPI.eventsControllerOnClick(trackClickRequestDto: trackClickRequestDto) { (response, error) in
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
 **trackClickRequestDto** | [**TrackClickRequestDto**](TrackClickRequestDto.md) |  | 

### Return type

[**TrackResponseDto**](TrackResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **eventsControllerOnImpression**
```swift
    open class func eventsControllerOnImpression(trackImpressionRequestDto: TrackImpressionRequestDto, completion: @escaping (_ data: TrackResponseDto?, _ error: Error?) -> Void)
```



Log an impression.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let trackImpressionRequestDto = TrackImpressionRequestDto(storeId: "storeId_example", sessionId: "sessionId_example", deviceId: "deviceId_example", customerId: "customerId_example", sdkVersion: "sdkVersion_example", requestId: "requestId_example", productIdOnStore: "productIdOnStore_example", adsetId: "adsetId_example", userAgent: "userAgent_example") // TrackImpressionRequestDto | 

// 
EventsAPI.eventsControllerOnImpression(trackImpressionRequestDto: trackImpressionRequestDto) { (response, error) in
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
 **trackImpressionRequestDto** | [**TrackImpressionRequestDto**](TrackImpressionRequestDto.md) |  | 

### Return type

[**TrackResponseDto**](TrackResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **eventsControllerOnPageView**
```swift
    open class func eventsControllerOnPageView(trackPageViewRequestDto: TrackPageViewRequestDto, completion: @escaping (_ data: TrackResponseDto?, _ error: Error?) -> Void)
```



Log when the customer views a specific product / category page.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let trackPageViewRequestDto = TrackPageViewRequestDto(storeId: "storeId_example", sessionId: "sessionId_example", deviceId: "deviceId_example", customerId: "customerId_example", sdkVersion: "sdkVersion_example", requestId: "requestId_example", productIdOnStore: "productIdOnStore_example", adsetId: "adsetId_example", categoryIdOnStore: "categoryIdOnStore_example", userAgent: "userAgent_example") // TrackPageViewRequestDto | 

// 
EventsAPI.eventsControllerOnPageView(trackPageViewRequestDto: trackPageViewRequestDto) { (response, error) in
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
 **trackPageViewRequestDto** | [**TrackPageViewRequestDto**](TrackPageViewRequestDto.md) |  | 

### Return type

[**TrackResponseDto**](TrackResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **eventsControllerOnPurchase**
```swift
    open class func eventsControllerOnPurchase(trackPurchaseRequestDto: TrackPurchaseRequestDto, completion: @escaping (_ data: TrackResponseDto?, _ error: Error?) -> Void)
```



Log when the customer purchases a product.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let trackPurchaseRequestDto = TrackPurchaseRequestDto(storeId: "storeId_example", sessionId: "sessionId_example", deviceId: "deviceId_example", customerId: "customerId_example", sdkVersion: "sdkVersion_example", requestId: "requestId_example", productIdOnStore: "productIdOnStore_example", adsetId: "adsetId_example", categoryIdOnStore: "categoryIdOnStore_example", orderId: "orderId_example", quantity: 123, amount: 123, userAgent: "userAgent_example") // TrackPurchaseRequestDto | 

// 
EventsAPI.eventsControllerOnPurchase(trackPurchaseRequestDto: trackPurchaseRequestDto) { (response, error) in
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
 **trackPurchaseRequestDto** | [**TrackPurchaseRequestDto**](TrackPurchaseRequestDto.md) |  | 

### Return type

[**TrackResponseDto**](TrackResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

