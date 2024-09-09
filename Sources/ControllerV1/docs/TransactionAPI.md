# TransactionAPI

All URIs are relative to *https://api-dev.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autoChargeControllerFetchOne**](TransactionAPI.md#autochargecontrollerfetchone) | **GET** /auto-charge | 
[**autoChargeControllerUpsert**](TransactionAPI.md#autochargecontrollerupsert) | **POST** /auto-charge | 
[**transactionControllerCloseTransaction**](TransactionAPI.md#transactioncontrollerclosetransaction) | **POST** /transactions/{id}/close | 
[**transactionControllerCompleteTransaction**](TransactionAPI.md#transactioncontrollercompletetransaction) | **POST** /transactions/{id}/iamport/complete | 
[**transactionControllerFetchMany**](TransactionAPI.md#transactioncontrollerfetchmany) | **GET** /transactions | 
[**transactionControllerFetchOne**](TransactionAPI.md#transactioncontrollerfetchone) | **GET** /transactions/{id} | 
[**transactionControllerStartTransaction**](TransactionAPI.md#transactioncontrollerstarttransaction) | **POST** /transactions | 


# **autoChargeControllerFetchOne**
```swift
    open class func autoChargeControllerFetchOne(completion: @escaping (_ data: AutoCharge?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


TransactionAPI.autoChargeControllerFetchOne() { (response, error) in
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

[**AutoCharge**](AutoCharge.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **autoChargeControllerUpsert**
```swift
    open class func autoChargeControllerUpsert(createAutoChargeDto: CreateAutoChargeDto, completion: @escaping (_ data: AutoCharge?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createAutoChargeDto = CreateAutoChargeDto(amount: 123, date: 123, balance: 123, paymentMethod: "paymentMethod_example", activated: false) // CreateAutoChargeDto | 

TransactionAPI.autoChargeControllerUpsert(createAutoChargeDto: createAutoChargeDto) { (response, error) in
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
 **createAutoChargeDto** | [**CreateAutoChargeDto**](CreateAutoChargeDto.md) |  | 

### Return type

[**AutoCharge**](AutoCharge.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionControllerCloseTransaction**
```swift
    open class func transactionControllerCloseTransaction(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

TransactionAPI.transactionControllerCloseTransaction(id: id) { (response, error) in
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

# **transactionControllerCompleteTransaction**
```swift
    open class func transactionControllerCompleteTransaction(id: String, iamportPaymentResult: IamportPaymentResult, completion: @escaping (_ data: Transaction?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let iamportPaymentResult = IamportPaymentResult(applyNum: "applyNum_example", bankName: "bankName_example", buyerAddr: "buyerAddr_example", buyerEmail: "buyerEmail_example", buyerName: "buyerName_example", buyerPostcode: "buyerPostcode_example", buyerTel: "buyerTel_example", cardName: "cardName_example", cardNumber: "cardNumber_example", cardQuota: 123, currency: "currency_example", customData: "customData_example", impUid: "impUid_example", merchantUid: "merchantUid_example", name: "name_example", paidAmount: 123, paidAt: 123, payMethod: "payMethod_example", pgProvider: "pgProvider_example", pgTid: "pgTid_example", pgType: "pgType_example", receiptUrl: "receiptUrl_example", status: "status_example", success: false) // IamportPaymentResult | 

TransactionAPI.transactionControllerCompleteTransaction(id: id, iamportPaymentResult: iamportPaymentResult) { (response, error) in
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
 **iamportPaymentResult** | [**IamportPaymentResult**](IamportPaymentResult.md) |  | 

### Return type

[**Transaction**](Transaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionControllerFetchMany**
```swift
    open class func transactionControllerFetchMany(category: Category_transactionControllerFetchMany, type: TransactionType? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: TransactionControllerFetchMany200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let category = "category_example" // String | 
let type = TransactionType() // TransactionType |  (optional)
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

TransactionAPI.transactionControllerFetchMany(category: category, type: type, limit: limit, offset: offset) { (response, error) in
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
 **category** | **String** |  | 
 **type** | [**TransactionType**](.md) |  | [optional] 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**TransactionControllerFetchMany200Response**](TransactionControllerFetchMany200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionControllerFetchOne**
```swift
    open class func transactionControllerFetchOne(id: String, completion: @escaping (_ data: FetchTransactionResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

TransactionAPI.transactionControllerFetchOne(id: id) { (response, error) in
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

[**FetchTransactionResponseDto**](FetchTransactionResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionControllerStartTransaction**
```swift
    open class func transactionControllerStartTransaction(createTransactionDto: CreateTransactionDto, completion: @escaping (_ data: CreateTransactionResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createTransactionDto = CreateTransactionDto(amount: 123, paymentMethod: "paymentMethod_example", currency: "currency_example", pg: "pg_example", paymentCategory: "paymentCategory_example") // CreateTransactionDto | 

TransactionAPI.transactionControllerStartTransaction(createTransactionDto: createTransactionDto) { (response, error) in
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
 **createTransactionDto** | [**CreateTransactionDto**](CreateTransactionDto.md) |  | 

### Return type

[**CreateTransactionResponseDto**](CreateTransactionResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

