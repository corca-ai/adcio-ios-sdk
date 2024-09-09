# StoreAPI

All URIs are relative to *https://api-dev.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**storeControllerGetMe**](StoreAPI.md#storecontrollergetme) | **GET** /stores/me | 
[**subscriptionPlanControllerCancel**](StoreAPI.md#subscriptionplancontrollercancel) | **PUT** /subscription-plans/cancel | 
[**subscriptionPlanControllerUpsert**](StoreAPI.md#subscriptionplancontrollerupsert) | **PUT** /subscription-plans | 


# **storeControllerGetMe**
```swift
    open class func storeControllerGetMe(completion: @escaping (_ data: StoreResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


StoreAPI.storeControllerGetMe() { (response, error) in
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

[**StoreResponseDto**](StoreResponseDto.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionPlanControllerCancel**
```swift
    open class func subscriptionPlanControllerCancel(completion: @escaping (_ data: SubscriptionPlan?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


StoreAPI.subscriptionPlanControllerCancel() { (response, error) in
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

[**SubscriptionPlan**](SubscriptionPlan.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionPlanControllerUpsert**
```swift
    open class func subscriptionPlanControllerUpsert(upsertSubscriptionPlanDto: UpsertSubscriptionPlanDto, completion: @escaping (_ data: SubscriptionPlan?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let upsertSubscriptionPlanDto = UpsertSubscriptionPlanDto(type: "type_example") // UpsertSubscriptionPlanDto | 

StoreAPI.subscriptionPlanControllerUpsert(upsertSubscriptionPlanDto: upsertSubscriptionPlanDto) { (response, error) in
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
 **upsertSubscriptionPlanDto** | [**UpsertSubscriptionPlanDto**](UpsertSubscriptionPlanDto.md) |  | 

### Return type

[**SubscriptionPlan**](SubscriptionPlan.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

