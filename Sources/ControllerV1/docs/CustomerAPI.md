# CustomerAPI

All URIs are relative to *https://api-dev.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**customerControllerFetchCarts**](CustomerAPI.md#customercontrollerfetchcarts) | **GET** /customer/carts | 
[**customerControllerFetchOrders**](CustomerAPI.md#customercontrollerfetchorders) | **GET** /customer/orders | 
[**customerControllerFetchWishlist**](CustomerAPI.md#customercontrollerfetchwishlist) | **GET** /customer/wishlist | 


# **customerControllerFetchCarts**
```swift
    open class func customerControllerFetchCarts(customerId: String, clientId: String, within: Within_customerControllerFetchCarts, completion: @escaping (_ data: [FetchCartResponseDto]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let customerId = "customerId_example" // String | 
let clientId = "clientId_example" // String | 
let within = "within_example" // String | 

CustomerAPI.customerControllerFetchCarts(customerId: customerId, clientId: clientId, within: within) { (response, error) in
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
 **customerId** | **String** |  | 
 **clientId** | **String** |  | 
 **within** | **String** |  | 

### Return type

[**[FetchCartResponseDto]**](FetchCartResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerControllerFetchOrders**
```swift
    open class func customerControllerFetchOrders(customerId: String, clientId: String, within: Within_customerControllerFetchOrders, completion: @escaping (_ data: [Order]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let customerId = "customerId_example" // String | 
let clientId = "clientId_example" // String | 
let within = "within_example" // String | 

CustomerAPI.customerControllerFetchOrders(customerId: customerId, clientId: clientId, within: within) { (response, error) in
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
 **customerId** | **String** |  | 
 **clientId** | **String** |  | 
 **within** | **String** |  | 

### Return type

[**[Order]**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerControllerFetchWishlist**
```swift
    open class func customerControllerFetchWishlist(customerId: String, clientId: String, within: Within_customerControllerFetchWishlist, completion: @escaping (_ data: [FetchWishlistResponseDto]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let customerId = "customerId_example" // String | 
let clientId = "clientId_example" // String | 
let within = "within_example" // String | 

CustomerAPI.customerControllerFetchWishlist(customerId: customerId, clientId: clientId, within: within) { (response, error) in
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
 **customerId** | **String** |  | 
 **clientId** | **String** |  | 
 **within** | **String** |  | 

### Return type

[**[FetchWishlistResponseDto]**](FetchWishlistResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

