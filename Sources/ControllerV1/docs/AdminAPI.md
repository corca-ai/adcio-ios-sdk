# AdminAPI

All URIs are relative to *https://api-dev.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminControllerDeleteClient**](AdminAPI.md#admincontrollerdeleteclient) | **DELETE** /admin/clients/{id} | 
[**adminControllerFetchClient**](AdminAPI.md#admincontrollerfetchclient) | **GET** /admin/clients/{id} | 
[**adminControllerFetchClients**](AdminAPI.md#admincontrollerfetchclients) | **GET** /admin/clients | 
[**adminControllerFetchPlacements**](AdminAPI.md#admincontrollerfetchplacements) | **GET** /admin/placements | 
[**adminControllerFetchSystemSetting**](AdminAPI.md#admincontrollerfetchsystemsetting) | **GET** /admin | 
[**adminControllerUpdateClient**](AdminAPI.md#admincontrollerupdateclient) | **PUT** /admin/clients/{id} | 


# **adminControllerDeleteClient**
```swift
    open class func adminControllerDeleteClient(id: String, clientType: ClientType_adminControllerDeleteClient, completion: @escaping (_ data: Client?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let clientType = "clientType_example" // String | 

AdminAPI.adminControllerDeleteClient(id: id, clientType: clientType) { (response, error) in
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
 **clientType** | **String** |  | 

### Return type

[**Client**](Client.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminControllerFetchClient**
```swift
    open class func adminControllerFetchClient(id: String, isDeleted: Bool? = nil, completion: @escaping (_ data: FetchClientAdminResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let isDeleted = true // Bool |  (optional)

AdminAPI.adminControllerFetchClient(id: id, isDeleted: isDeleted) { (response, error) in
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
 **isDeleted** | **Bool** |  | [optional] 

### Return type

[**FetchClientAdminResponseDto**](FetchClientAdminResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminControllerFetchClients**
```swift
    open class func adminControllerFetchClients(isStore: Bool? = nil, isSeller: Bool? = nil, storeId: String? = nil, name: String? = nil, isDeleted: Bool? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: AdminControllerFetchClients200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let isStore = true // Bool |  (optional)
let isSeller = true // Bool |  (optional)
let storeId = "storeId_example" // String |  (optional)
let name = "name_example" // String |  (optional)
let isDeleted = true // Bool |  (optional)
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

AdminAPI.adminControllerFetchClients(isStore: isStore, isSeller: isSeller, storeId: storeId, name: name, isDeleted: isDeleted, limit: limit, offset: offset) { (response, error) in
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
 **isStore** | **Bool** |  | [optional] 
 **isSeller** | **Bool** |  | [optional] 
 **storeId** | **String** |  | [optional] 
 **name** | **String** |  | [optional] 
 **isDeleted** | **Bool** |  | [optional] 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**AdminControllerFetchClients200Response**](AdminControllerFetchClients200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminControllerFetchPlacements**
```swift
    open class func adminControllerFetchPlacements(select: [Select_adminControllerFetchPlacements]? = nil, clientId: String? = nil, title: String? = nil, type: ModelType_adminControllerFetchPlacements? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: AdminControllerFetchPlacements200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let select = ["select_example"] // [String] |  (optional)
let clientId = "clientId_example" // String |  (optional)
let title = "title_example" // String |  (optional)
let type = "type_example" // String |  (optional)
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

AdminAPI.adminControllerFetchPlacements(select: select, clientId: clientId, title: title, type: type, limit: limit, offset: offset) { (response, error) in
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
 **select** | [**[String]**](String.md) |  | [optional] 
 **clientId** | **String** |  | [optional] 
 **title** | **String** |  | [optional] 
 **type** | **String** |  | [optional] 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**AdminControllerFetchPlacements200Response**](AdminControllerFetchPlacements200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminControllerFetchSystemSetting**
```swift
    open class func adminControllerFetchSystemSetting(completion: @escaping (_ data: SystemSetting?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


AdminAPI.adminControllerFetchSystemSetting() { (response, error) in
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

[**SystemSetting**](SystemSetting.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminControllerUpdateClient**
```swift
    open class func adminControllerUpdateClient(id: String, updateClientDto: UpdateClientDto, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let updateClientDto = UpdateClientDto(currency: "currency_example", timezone: "timezone_example") // UpdateClientDto | 

AdminAPI.adminControllerUpdateClient(id: id, updateClientDto: updateClientDto) { (response, error) in
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
 **updateClientDto** | [**UpdateClientDto**](UpdateClientDto.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

