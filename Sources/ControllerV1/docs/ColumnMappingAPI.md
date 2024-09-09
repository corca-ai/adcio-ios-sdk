# ColumnMappingAPI

All URIs are relative to *https://api-dev.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**columnMappingControllerCreateCategoryColumnMapping**](ColumnMappingAPI.md#columnmappingcontrollercreatecategorycolumnmapping) | **POST** /column-mappings/categories | 
[**columnMappingControllerCreateProductColumnMapping**](ColumnMappingAPI.md#columnmappingcontrollercreateproductcolumnmapping) | **POST** /column-mappings/products | 
[**columnMappingControllerDeleteColumnMapping**](ColumnMappingAPI.md#columnmappingcontrollerdeletecolumnmapping) | **DELETE** /column-mappings/{type}/{id} | 
[**columnMappingControllerFetchMany**](ColumnMappingAPI.md#columnmappingcontrollerfetchmany) | **GET** /column-mappings/{type} | 
[**columnMappingControllerUpdateCategoryColumnMapping**](ColumnMappingAPI.md#columnmappingcontrollerupdatecategorycolumnmapping) | **PUT** /column-mappings/categories/{id} | 
[**columnMappingControllerUpdateProductColumnMapping**](ColumnMappingAPI.md#columnmappingcontrollerupdateproductcolumnmapping) | **PUT** /column-mappings/products/{id} | 


# **columnMappingControllerCreateCategoryColumnMapping**
```swift
    open class func columnMappingControllerCreateCategoryColumnMapping(createCategoryColumnMappingDto: CreateCategoryColumnMappingDto, completion: @escaping (_ data: ColumnMapping?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createCategoryColumnMappingDto = CreateCategoryColumnMappingDto(name: "name_example", mapping: CategoryColumnMappingDto(idOnStore: "idOnStore_example", name: "name_example", depth0Id: "depth0Id_example", depth1Id: "depth1Id_example", depth2Id: "depth2Id_example", depth3Id: "depth3Id_example", depth4Id: "depth4Id_example")) // CreateCategoryColumnMappingDto | 

ColumnMappingAPI.columnMappingControllerCreateCategoryColumnMapping(createCategoryColumnMappingDto: createCategoryColumnMappingDto) { (response, error) in
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
 **createCategoryColumnMappingDto** | [**CreateCategoryColumnMappingDto**](CreateCategoryColumnMappingDto.md) |  | 

### Return type

[**ColumnMapping**](ColumnMapping.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **columnMappingControllerCreateProductColumnMapping**
```swift
    open class func columnMappingControllerCreateProductColumnMapping(createProductColumnMappingDto: CreateProductColumnMappingDto, completion: @escaping (_ data: ColumnMapping?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createProductColumnMappingDto = CreateProductColumnMappingDto(name: "name_example", mapping: ProductColumnMappingDto(idOnStore: "idOnStore_example", name: "name_example", price: "price_example", description: "description_example", includeInRecommendation: "includeInRecommendation_example", image: "image_example", sellerIdOnStore: "sellerIdOnStore_example", url: "url_example", deepLink: "deepLink_example")) // CreateProductColumnMappingDto | 

ColumnMappingAPI.columnMappingControllerCreateProductColumnMapping(createProductColumnMappingDto: createProductColumnMappingDto) { (response, error) in
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
 **createProductColumnMappingDto** | [**CreateProductColumnMappingDto**](CreateProductColumnMappingDto.md) |  | 

### Return type

[**ColumnMapping**](ColumnMapping.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **columnMappingControllerDeleteColumnMapping**
```swift
    open class func columnMappingControllerDeleteColumnMapping(type: String, id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let type = "type_example" // String | 
let id = "id_example" // String | 

ColumnMappingAPI.columnMappingControllerDeleteColumnMapping(type: type, id: id) { (response, error) in
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
 **type** | **String** |  | 
 **id** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **columnMappingControllerFetchMany**
```swift
    open class func columnMappingControllerFetchMany(type: String, completion: @escaping (_ data: [ColumnMapping]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let type = "type_example" // String | 

ColumnMappingAPI.columnMappingControllerFetchMany(type: type) { (response, error) in
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
 **type** | **String** |  | 

### Return type

[**[ColumnMapping]**](ColumnMapping.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **columnMappingControllerUpdateCategoryColumnMapping**
```swift
    open class func columnMappingControllerUpdateCategoryColumnMapping(id: String, updateCategoryColumnMappingDto: UpdateCategoryColumnMappingDto, completion: @escaping (_ data: ColumnMapping?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let updateCategoryColumnMappingDto = UpdateCategoryColumnMappingDto(name: "name_example", mapping: CategoryColumnMappingDto(idOnStore: "idOnStore_example", name: "name_example", depth0Id: "depth0Id_example", depth1Id: "depth1Id_example", depth2Id: "depth2Id_example", depth3Id: "depth3Id_example", depth4Id: "depth4Id_example")) // UpdateCategoryColumnMappingDto | 

ColumnMappingAPI.columnMappingControllerUpdateCategoryColumnMapping(id: id, updateCategoryColumnMappingDto: updateCategoryColumnMappingDto) { (response, error) in
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
 **updateCategoryColumnMappingDto** | [**UpdateCategoryColumnMappingDto**](UpdateCategoryColumnMappingDto.md) |  | 

### Return type

[**ColumnMapping**](ColumnMapping.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **columnMappingControllerUpdateProductColumnMapping**
```swift
    open class func columnMappingControllerUpdateProductColumnMapping(id: String, updateProductColumnMappingDto: UpdateProductColumnMappingDto, completion: @escaping (_ data: ColumnMapping?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let updateProductColumnMappingDto = UpdateProductColumnMappingDto(name: "name_example", mapping: ProductColumnMappingDto(idOnStore: "idOnStore_example", name: "name_example", price: "price_example", description: "description_example", includeInRecommendation: "includeInRecommendation_example", image: "image_example", sellerIdOnStore: "sellerIdOnStore_example", url: "url_example", deepLink: "deepLink_example")) // UpdateProductColumnMappingDto | 

ColumnMappingAPI.columnMappingControllerUpdateProductColumnMapping(id: id, updateProductColumnMappingDto: updateProductColumnMappingDto) { (response, error) in
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
 **updateProductColumnMappingDto** | [**UpdateProductColumnMappingDto**](UpdateProductColumnMappingDto.md) |  | 

### Return type

[**ColumnMapping**](ColumnMapping.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

