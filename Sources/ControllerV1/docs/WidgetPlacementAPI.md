# WidgetPlacementAPI

All URIs are relative to *https://api-dev.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**widgetPlacementControllerCreateWidgetPlacement**](WidgetPlacementAPI.md#widgetplacementcontrollercreatewidgetplacement) | **POST** /widget-placements | 


# **widgetPlacementControllerCreateWidgetPlacement**
```swift
    open class func widgetPlacementControllerCreateWidgetPlacement(createWidgetPlacementDto: CreateWidgetPlacementDto, completion: @escaping (_ data: CreateWidgetPlacementResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createWidgetPlacementDto = CreateWidgetPlacementDto(title: "title_example", pageName: "pageName_example", type: "type_example", suggestionType: "suggestionType_example", bannerPlacementType: "bannerPlacementType_example", supportEnvironment: "supportEnvironment_example", widgetId: "widgetId_example", values: 123) // CreateWidgetPlacementDto | 

WidgetPlacementAPI.widgetPlacementControllerCreateWidgetPlacement(createWidgetPlacementDto: createWidgetPlacementDto) { (response, error) in
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
 **createWidgetPlacementDto** | [**CreateWidgetPlacementDto**](CreateWidgetPlacementDto.md) |  | 

### Return type

[**CreateWidgetPlacementResponseDto**](CreateWidgetPlacementResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

