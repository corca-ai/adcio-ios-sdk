# ProductAPI

All URIs are relative to *https://api.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**productControllerCreate**](ProductAPI.md#productcontrollercreate) | **POST** /products | 
[**productControllerFetchMany**](ProductAPI.md#productcontrollerfetchmany) | **GET** /products | 
[**productControllerFetchOne**](ProductAPI.md#productcontrollerfetchone) | **GET** /products/{id} | 
[**productControllerUpdate**](ProductAPI.md#productcontrollerupdate) | **PATCH** /products/{id} | 
[**productControllerUpsertMany**](ProductAPI.md#productcontrollerupsertmany) | **PUT** /products/bulk | 


# **productControllerCreate**
```swift
    open class func productControllerCreate(createProductDto: CreateProductDto, completion: @escaping (_ data: Product?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createProductDto = CreateProductDto(idOnStore: "idOnStore_example", name: "name_example", price: 123, summary: "summary_example", image: "image_example", includeInRecommendation: false, sellerId: "sellerId_example", sellerIdOnStore: "sellerIdOnStore_example", url: "url_example", deepLink: "deepLink_example", caption: "caption_example") // CreateProductDto | 

ProductAPI.productControllerCreate(createProductDto: createProductDto) { (response, error) in
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
 **createProductDto** | [**CreateProductDto**](CreateProductDto.md) |  | 

### Return type

[**Product**](Product.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productControllerFetchMany**
```swift
    open class func productControllerFetchMany(orderBy: [String]? = nil, sellerId: String? = nil, storeId: String? = nil, startDate: Date? = nil, endDate: Date? = nil, placementId: String? = nil, categoryId: String? = nil, activated: Bool? = nil, name: String? = nil, idOnStore: String? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: ProductControllerFetchMany200Response?, _ error: Error?) -> Void)
```



Fetch many products.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let orderBy = ["inner_example"] // [String] | ProductSortOption (optional)
let sellerId = "sellerId_example" // String |  (optional)
let storeId = "storeId_example" // String |  (optional)
let startDate = Date() // Date |  (optional)
let endDate = Date() // Date |  (optional)
let placementId = "placementId_example" // String |  (optional)
let categoryId = "categoryId_example" // String |  (optional)
let activated = true // Bool |  (optional)
let name = "name_example" // String |  (optional)
let idOnStore = "idOnStore_example" // String |  (optional)
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

// 
ProductAPI.productControllerFetchMany(orderBy: orderBy, sellerId: sellerId, storeId: storeId, startDate: startDate, endDate: endDate, placementId: placementId, categoryId: categoryId, activated: activated, name: name, idOnStore: idOnStore, limit: limit, offset: offset) { (response, error) in
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
 **orderBy** | [**[String]**](String.md) | ProductSortOption | [optional] 
 **sellerId** | **String** |  | [optional] 
 **storeId** | **String** |  | [optional] 
 **startDate** | **Date** |  | [optional] 
 **endDate** | **Date** |  | [optional] 
 **placementId** | **String** |  | [optional] 
 **categoryId** | **String** |  | [optional] 
 **activated** | **Bool** |  | [optional] 
 **name** | **String** |  | [optional] 
 **idOnStore** | **String** |  | [optional] 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**ProductControllerFetchMany200Response**](ProductControllerFetchMany200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productControllerFetchOne**
```swift
    open class func productControllerFetchOne(id: String, completion: @escaping (_ data: FetchProductResponseDto?, _ error: Error?) -> Void)
```



Fetch one product.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

// 
ProductAPI.productControllerFetchOne(id: id) { (response, error) in
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

[**FetchProductResponseDto**](FetchProductResponseDto.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productControllerUpdate**
```swift
    open class func productControllerUpdate(id: String, updateProductDto: UpdateProductDto, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let updateProductDto = UpdateProductDto(idOnStore: "idOnStore_example", name: "name_example", price: 123, summary: "summary_example", image: "image_example", includeInRecommendation: false, sellerId: "sellerId_example", url: "url_example", deepLink: "deepLink_example", caption: "caption_example") // UpdateProductDto | 

ProductAPI.productControllerUpdate(id: id, updateProductDto: updateProductDto) { (response, error) in
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
 **updateProductDto** | [**UpdateProductDto**](UpdateProductDto.md) |  | 

### Return type

Void (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productControllerUpsertMany**
```swift
    open class func productControllerUpsertMany(upsertManyProductDto: UpsertManyProductDto, completion: @escaping (_ data: UpsertManyProductResponseDto?, _ error: Error?) -> Void)
```



Bulk upsert products.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let upsertManyProductDto = UpsertManyProductDto(data: [UpsertProductDto(idOnStore: "idOnStore_example", name: "name_example", price: 123, discountPrice: 123, additionalInformation: [123], summary: "summary_example", image: "image_example", includeInRecommendation: false, sellerId: "sellerId_example", sellerIdOnStore: "sellerIdOnStore_example", url: "url_example", deepLink: "deepLink_example", caption: "caption_example", additionalImages: ["additionalImages_example"], decorationImages: ["decorationImages_example"], detail: ProductDetailDto(description: "description_example", data: 123))]) // UpsertManyProductDto | 

// 
ProductAPI.productControllerUpsertMany(upsertManyProductDto: upsertManyProductDto) { (response, error) in
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
 **upsertManyProductDto** | [**UpsertManyProductDto**](UpsertManyProductDto.md) |  | 

### Return type

[**UpsertManyProductResponseDto**](UpsertManyProductResponseDto.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

