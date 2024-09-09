# DefaultAPI

All URIs are relative to *https://api-dev.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**exchangeRateControllerFetchAllExchangeRates**](DefaultAPI.md#exchangeratecontrollerfetchallexchangerates) | **GET** /exchange-rates | 
[**exchangeRateControllerFetchExchangeRate**](DefaultAPI.md#exchangeratecontrollerfetchexchangerate) | **GET** /exchange-rates/{currencyCode} | 


# **exchangeRateControllerFetchAllExchangeRates**
```swift
    open class func exchangeRateControllerFetchAllExchangeRates(completion: @escaping (_ data: FetchAllExchangeRatesResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


DefaultAPI.exchangeRateControllerFetchAllExchangeRates() { (response, error) in
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

[**FetchAllExchangeRatesResponseDto**](FetchAllExchangeRatesResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exchangeRateControllerFetchExchangeRate**
```swift
    open class func exchangeRateControllerFetchExchangeRate(currencyCode: String, completion: @escaping (_ data: Double?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let currencyCode = "currencyCode_example" // String | 

DefaultAPI.exchangeRateControllerFetchExchangeRate(currencyCode: currencyCode) { (response, error) in
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
 **currencyCode** | **String** |  | 

### Return type

**Double**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

