# PlacementAPI

All URIs are relative to *https://api.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**placementControllerConnectProducts**](PlacementAPI.md#placementcontrollerconnectproducts) | **POST** /placements/{id}/products | 
[**placementControllerCreate**](PlacementAPI.md#placementcontrollercreate) | **POST** /placements | 
[**placementControllerFetchMany**](PlacementAPI.md#placementcontrollerfetchmany) | **GET** /placements | 
[**placementControllerFetchOne**](PlacementAPI.md#placementcontrollerfetchone) | **GET** /placements/{id} | 
[**placementControllerRemove**](PlacementAPI.md#placementcontrollerremove) | **DELETE** /placements/{id} | 
[**placementControllerRemoveProduct**](PlacementAPI.md#placementcontrollerremoveproduct) | **DELETE** /placements/{id}/products/{productId} | 
[**placementControllerUpdate**](PlacementAPI.md#placementcontrollerupdate) | **PATCH** /placements/{id} | 


# **placementControllerConnectProducts**
```swift
    open class func placementControllerConnectProducts(id: String, connectProductsToPlacementDto: ConnectProductsToPlacementDto, completion: @escaping (_ data: ConnectProductsToPlacementResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let connectProductsToPlacementDto = ConnectProductsToPlacementDto(productIds: ["productIds_example"]) // ConnectProductsToPlacementDto | 

PlacementAPI.placementControllerConnectProducts(id: id, connectProductsToPlacementDto: connectProductsToPlacementDto) { (response, error) in
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
 **connectProductsToPlacementDto** | [**ConnectProductsToPlacementDto**](ConnectProductsToPlacementDto.md) |  | 

### Return type

[**ConnectProductsToPlacementResponseDto**](ConnectProductsToPlacementResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **placementControllerCreate**
```swift
    open class func placementControllerCreate(createPlacementDto: CreatePlacementDto, completion: @escaping (_ data: Placement?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createPlacementDto = CreatePlacementDto(title: "title_example", pageName: "pageName_example", type: "type_example", suggestionType: "suggestionType_example", bannerPlacementType: "bannerPlacementType_example", supportEnvironment: "supportEnvironment_example", developEnvironment: "developEnvironment_example", displayFormatWidth: 123, displayFormatHeight: 123, placementFormatRatio: "placementFormatRatio_example", minDisplayCount: 123, maxDisplayCount: 123, displayCount: 123, injector: PlacementInjectorDto(grid: GridInjectorDto(paths: ["paths_example"], template: "template_example")), displayPositions: [123], tableSize: [123], productDetailDataColumns: ["productDetailDataColumns_example"]) // CreatePlacementDto | 

PlacementAPI.placementControllerCreate(createPlacementDto: createPlacementDto) { (response, error) in
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
 **createPlacementDto** | [**CreatePlacementDto**](CreatePlacementDto.md) |  | 

### Return type

[**Placement**](Placement.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **placementControllerFetchMany**
```swift
    open class func placementControllerFetchMany(orderBy: [String]? = nil, select: [Select_placementControllerFetchMany]? = nil, title: String? = nil, startDate: Date? = nil, endDate: Date? = nil, type: ModelType_placementControllerFetchMany? = nil, suggestionType: SuggestionType_placementControllerFetchMany? = nil, activated: Bool? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: PlacementControllerFetchMany200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let orderBy = ["inner_example"] // [String] | PlacementSortOption (optional)
let select = ["select_example"] // [String] |  (optional)
let title = "title_example" // String |  (optional)
let startDate = Date() // Date |  (optional)
let endDate = Date() // Date |  (optional)
let type = "type_example" // String |  (optional)
let suggestionType = "suggestionType_example" // String |  (optional)
let activated = true // Bool |  (optional)
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

PlacementAPI.placementControllerFetchMany(orderBy: orderBy, select: select, title: title, startDate: startDate, endDate: endDate, type: type, suggestionType: suggestionType, activated: activated, limit: limit, offset: offset) { (response, error) in
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
 **orderBy** | [**[String]**](String.md) | PlacementSortOption | [optional] 
 **select** | [**[String]**](String.md) |  | [optional] 
 **title** | **String** |  | [optional] 
 **startDate** | **Date** |  | [optional] 
 **endDate** | **Date** |  | [optional] 
 **type** | **String** |  | [optional] 
 **suggestionType** | **String** |  | [optional] 
 **activated** | **Bool** |  | [optional] 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**PlacementControllerFetchMany200Response**](PlacementControllerFetchMany200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **placementControllerFetchOne**
```swift
    open class func placementControllerFetchOne(id: String, completion: @escaping (_ data: FetchPlacementResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

PlacementAPI.placementControllerFetchOne(id: id) { (response, error) in
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

[**FetchPlacementResponseDto**](FetchPlacementResponseDto.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **placementControllerRemove**
```swift
    open class func placementControllerRemove(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

PlacementAPI.placementControllerRemove(id: id) { (response, error) in
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

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **placementControllerRemoveProduct**
```swift
    open class func placementControllerRemoveProduct(id: String, productId: String, completion: @escaping (_ data: RemoveProductFromPlacementResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let productId = "productId_example" // String | 

PlacementAPI.placementControllerRemoveProduct(id: id, productId: productId) { (response, error) in
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
 **productId** | **String** |  | 

### Return type

[**RemoveProductFromPlacementResponseDto**](RemoveProductFromPlacementResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **placementControllerUpdate**
```swift
    open class func placementControllerUpdate(id: String, updatePlacementDto: UpdatePlacementDto, completion: @escaping (_ data: UpdatePlacementResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let updatePlacementDto = UpdatePlacementDto(title: "title_example", activated: false, minDisplayCount: 123, maxDisplayCount: 123, displayCount: 123, displayPositions: [123], tableSize: [123], productDetailDataColumns: ["productDetailDataColumns_example"]) // UpdatePlacementDto | 

PlacementAPI.placementControllerUpdate(id: id, updatePlacementDto: updatePlacementDto) { (response, error) in
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
 **updatePlacementDto** | [**UpdatePlacementDto**](UpdatePlacementDto.md) |  | 

### Return type

[**UpdatePlacementResponseDto**](UpdatePlacementResponseDto.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

