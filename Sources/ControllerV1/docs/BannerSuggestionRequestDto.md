# BannerSuggestionRequestDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sessionId** | **String** | The session starts when the customer visits the store. It persists until the customer closes the tab, browser or app. | 
**deviceId** | **String** | The device identifier should be unique for each device. A customer can have multiple devices. | 
**customerId** | **String** | The customer identifier which is generated and managed by the store. The store should configure &#x60;frontApi&#x60; parameter of ADCIO SDK so that the &#x60;customerId&#x60; can be sent to ADCIO API. | [optional] 
**sdkVersion** | **String** | The version of the SDK | [optional] 
**placementId** | **String** | Identifier for the placement which the suggestion will be placed. | 
**placementPositionX** | **Double** | The X coordinate of the placement in pixel. | [optional] 
**placementPositionY** | **Double** | The Y coordinate of the placement in pixel. | [optional] 
**fromAgent** | **Bool** | Whether the request is from the ADCIO agent or not. Default value is &#x60;false&#x60;. | [optional] 
**targets** | [SuggestionRequestTarget] |  | [optional] 
**userAgent** | **String** |  | [optional] 
**appVersion** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


