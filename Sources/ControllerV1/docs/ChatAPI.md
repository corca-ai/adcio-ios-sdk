# ChatAPI

All URIs are relative to *https://api-dev.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chatControllerCreateChatDialogue**](ChatAPI.md#chatcontrollercreatechatdialogue) | **POST** /chat/groups/{groupId}/dialogue | 
[**chatControllerCreateChatGroup**](ChatAPI.md#chatcontrollercreatechatgroup) | **POST** /chat/groups | 
[**chatControllerCreateChatProfile**](ChatAPI.md#chatcontrollercreatechatprofile) | **POST** /chat/profile | 
[**chatControllerCreateChatRecommendation**](ChatAPI.md#chatcontrollercreatechatrecommendation) | **POST** /chat/groups/{groupId}/dialogue/{dialogId}/recommendation | 
[**chatControllerFetchChatGroup**](ChatAPI.md#chatcontrollerfetchchatgroup) | **GET** /chat/groups/{id} | 
[**chatControllerFetchChatProfile**](ChatAPI.md#chatcontrollerfetchchatprofile) | **GET** /chat/profile | 
[**chatControllerFetchCustomer**](ChatAPI.md#chatcontrollerfetchcustomer) | **GET** /chat/users/{id} | 
[**chatControllerFetchCustomerDialogueCount**](ChatAPI.md#chatcontrollerfetchcustomerdialoguecount) | **GET** /chat/users/{id}/dialogue/count | 
[**chatControllerUpdateChatProfile**](ChatAPI.md#chatcontrollerupdatechatprofile) | **PUT** /chat/profile | 
[**chatControllerUpdateChatProfileImage**](ChatAPI.md#chatcontrollerupdatechatprofileimage) | **PUT** /chat/profile/image | 


# **chatControllerCreateChatDialogue**
```swift
    open class func chatControllerCreateChatDialogue(groupId: String, createChatDialogueDto: CreateChatDialogueDto, completion: @escaping (_ data: CreateChatDialogueResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let groupId = "groupId_example" // String | 
let createChatDialogueDto = CreateChatDialogueDto(role: "role_example", error: "error_example", questions: ["questions_example"], content: "content_example", type: "type_example") // CreateChatDialogueDto | 

ChatAPI.chatControllerCreateChatDialogue(groupId: groupId, createChatDialogueDto: createChatDialogueDto) { (response, error) in
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
 **groupId** | **String** |  | 
 **createChatDialogueDto** | [**CreateChatDialogueDto**](CreateChatDialogueDto.md) |  | 

### Return type

[**CreateChatDialogueResponseDto**](CreateChatDialogueResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatControllerCreateChatGroup**
```swift
    open class func chatControllerCreateChatGroup(createChatGroupDto: CreateChatGroupDto, completion: @escaping (_ data: CreateChatGroupResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createChatGroupDto = CreateChatGroupDto(id: "id_example", customerId: "customerId_example", isAnonymous: false, clientId: "clientId_example") // CreateChatGroupDto | 

ChatAPI.chatControllerCreateChatGroup(createChatGroupDto: createChatGroupDto) { (response, error) in
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
 **createChatGroupDto** | [**CreateChatGroupDto**](CreateChatGroupDto.md) |  | 

### Return type

[**CreateChatGroupResponseDto**](CreateChatGroupResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatControllerCreateChatProfile**
```swift
    open class func chatControllerCreateChatProfile(createChatProfileDto: CreateChatProfileDto, completion: @escaping (_ data: ChatProfile?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createChatProfileDto = CreateChatProfileDto(imageUrl: "imageUrl_example", name: "name_example", description: "description_example", domain: "domain_example", theme: "theme_example", language: "language_example", greetingMessage: "greetingMessage_example", bottomMargin: 123) // CreateChatProfileDto | 

ChatAPI.chatControllerCreateChatProfile(createChatProfileDto: createChatProfileDto) { (response, error) in
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
 **createChatProfileDto** | [**CreateChatProfileDto**](CreateChatProfileDto.md) |  | 

### Return type

[**ChatProfile**](ChatProfile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatControllerCreateChatRecommendation**
```swift
    open class func chatControllerCreateChatRecommendation(groupId: String, dialogId: Double, createChatRecommendationDto: CreateChatRecommendationDto, completion: @escaping (_ data: CreateChatRecommendationResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let groupId = "groupId_example" // String | 
let dialogId = 987 // Double | 
let createChatRecommendationDto = CreateChatRecommendationDto(explanation: "explanation_example", productIds: ["productIds_example"]) // CreateChatRecommendationDto | 

ChatAPI.chatControllerCreateChatRecommendation(groupId: groupId, dialogId: dialogId, createChatRecommendationDto: createChatRecommendationDto) { (response, error) in
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
 **groupId** | **String** |  | 
 **dialogId** | **Double** |  | 
 **createChatRecommendationDto** | [**CreateChatRecommendationDto**](CreateChatRecommendationDto.md) |  | 

### Return type

[**CreateChatRecommendationResponseDto**](CreateChatRecommendationResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatControllerFetchChatGroup**
```swift
    open class func chatControllerFetchChatGroup(id: String, completion: @escaping (_ data: FetchChatGroupResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

ChatAPI.chatControllerFetchChatGroup(id: id) { (response, error) in
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

[**FetchChatGroupResponseDto**](FetchChatGroupResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatControllerFetchChatProfile**
```swift
    open class func chatControllerFetchChatProfile(clientId: String, completion: @escaping (_ data: FetchChatProfileResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let clientId = "clientId_example" // String | 

ChatAPI.chatControllerFetchChatProfile(clientId: clientId) { (response, error) in
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
 **clientId** | **String** |  | 

### Return type

[**FetchChatProfileResponseDto**](FetchChatProfileResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatControllerFetchCustomer**
```swift
    open class func chatControllerFetchCustomer(id: String, clientId: String, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: ChatControllerFetchCustomer200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let clientId = "clientId_example" // String | 
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

ChatAPI.chatControllerFetchCustomer(id: id, clientId: clientId, limit: limit, offset: offset) { (response, error) in
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
 **clientId** | **String** |  | 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**ChatControllerFetchCustomer200Response**](ChatControllerFetchCustomer200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatControllerFetchCustomerDialogueCount**
```swift
    open class func chatControllerFetchCustomerDialogueCount(id: String, clientId: String, content: String, completion: @escaping (_ data: FetchCustomerDialogueCountResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let clientId = "clientId_example" // String | 
let content = "content_example" // String | 

ChatAPI.chatControllerFetchCustomerDialogueCount(id: id, clientId: clientId, content: content) { (response, error) in
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
 **clientId** | **String** |  | 
 **content** | **String** |  | 

### Return type

[**FetchCustomerDialogueCountResponseDto**](FetchCustomerDialogueCountResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatControllerUpdateChatProfile**
```swift
    open class func chatControllerUpdateChatProfile(updateChatProfileDto: UpdateChatProfileDto, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let updateChatProfileDto = UpdateChatProfileDto(imageUrl: "imageUrl_example", name: "name_example", description: "description_example", domain: "domain_example", theme: "theme_example", language: "language_example", activated: false, greetingMessage: "greetingMessage_example", bottomMargin: 123) // UpdateChatProfileDto | 

ChatAPI.chatControllerUpdateChatProfile(updateChatProfileDto: updateChatProfileDto) { (response, error) in
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
 **updateChatProfileDto** | [**UpdateChatProfileDto**](UpdateChatProfileDto.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatControllerUpdateChatProfileImage**
```swift
    open class func chatControllerUpdateChatProfileImage(image: URL, completion: @escaping (_ data: ChatProfile?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let image = URL(string: "https://example.com")! // URL | 

ChatAPI.chatControllerUpdateChatProfileImage(image: image) { (response, error) in
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
 **image** | **URL** |  | 

### Return type

[**ChatProfile**](ChatProfile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

