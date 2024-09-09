# TrackImpressionRequestDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**storeId** | **String** | ADCIO Client ID of the store. | 
**sessionId** | **String** | The session starts when the customer visits the store. It persists until the customer closes the tab, browser or app. | 
**deviceId** | **String** | The device identifier should be unique for each device. A customer can have multiple devices. | 
**customerId** | **String** | The customer identifier which is generated and managed by the store. The store should configure &#x60;frontApi&#x60; parameter of ADCIO SDK so that the &#x60;customerId&#x60; can be sent to ADCIO API. | [optional] 
**sdkVersion** | **String** | The version of the SDK | [optional] 
**requestId** | **String** | Identifier for the suggestion request | [optional] 
**productIdOnStore** | **String** | Product ID (on store). | [optional] 
**adsetId** | **String** | Product ID / Banner ID | [optional] 
**userAgent** | **String** |  | [optional] 
**appVersion** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


