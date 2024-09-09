# WidgetAPI

All URIs are relative to *https://api-dev.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**widgetControllerFetchManyWidgets**](WidgetAPI.md#widgetcontrollerfetchmanywidgets) | **GET** /widgets | 
[**widgetControllerFetchOneWidget**](WidgetAPI.md#widgetcontrollerfetchonewidget) | **GET** /widgets/{id} | 


# **widgetControllerFetchManyWidgets**
```swift
    open class func widgetControllerFetchManyWidgets(placementType: PlacementType_widgetControllerFetchManyWidgets, completion: @escaping (_ data: WidgetControllerFetchManyWidgets200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let placementType = "placementType_example" // String | 

WidgetAPI.widgetControllerFetchManyWidgets(placementType: placementType) { (response, error) in
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
 **placementType** | **String** |  | 

### Return type

[**WidgetControllerFetchManyWidgets200Response**](WidgetControllerFetchManyWidgets200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **widgetControllerFetchOneWidget**
```swift
    open class func widgetControllerFetchOneWidget(id: String, completion: @escaping (_ data: Widget?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

WidgetAPI.widgetControllerFetchOneWidget(id: id) { (response, error) in
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

[**Widget**](Widget.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

