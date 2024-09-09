# ClientAPI

All URIs are relative to *https://api-dev.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**businessLicenseControllerFetchByLicenseNumber**](ClientAPI.md#businesslicensecontrollerfetchbylicensenumber) | **GET** /business-licenses | 
[**businessLicenseControllerGenerateUploadLink**](ClientAPI.md#businesslicensecontrollergenerateuploadlink) | **POST** /business-licenses/license-upload-link | 
[**businessLicenseControllerInspect**](ClientAPI.md#businesslicensecontrollerinspect) | **POST** /business-licenses/inspect | 
[**clientControllerCreateBusinessLicense**](ClientAPI.md#clientcontrollercreatebusinesslicense) | **POST** /clients/me/business-licenses | 
[**clientControllerCreateSeller**](ClientAPI.md#clientcontrollercreateseller) | **POST** /clients/sellers | 
[**clientControllerCreateUser**](ClientAPI.md#clientcontrollercreateuser) | **POST** /clients/me/users | 
[**clientControllerFetchClient**](ClientAPI.md#clientcontrollerfetchclient) | **GET** /clients/me | 
[**clientControllerFetchClientUsers**](ClientAPI.md#clientcontrollerfetchclientusers) | **GET** /clients/{id}/users | 
[**clientControllerFetchSeller**](ClientAPI.md#clientcontrollerfetchseller) | **GET** /clients/sellers/{id} | 
[**clientControllerFetchSellers**](ClientAPI.md#clientcontrollerfetchsellers) | **GET** /clients/sellers | 
[**clientControllerInviteSeller**](ClientAPI.md#clientcontrollerinviteseller) | **POST** /clients/me/sellers | 
[**clientControllerRemoveUser**](ClientAPI.md#clientcontrollerremoveuser) | **DELETE** /clients/me/users/{email} | 
[**clientControllerResendInvitation**](ClientAPI.md#clientcontrollerresendinvitation) | **POST** /clients/me/sellers/{id}/invitation/mail | 
[**clientControllerSearchSellers**](ClientAPI.md#clientcontrollersearchsellers) | **GET** /clients/sellers/all/names | 
[**clientControllerSetup**](ClientAPI.md#clientcontrollersetup) | **POST** /clients | 
[**clientControllerUpdateClientIsStore**](ClientAPI.md#clientcontrollerupdateclientisstore) | **PATCH** /clients/me/store | 
[**clientControllerUpdateUser**](ClientAPI.md#clientcontrollerupdateuser) | **PUT** /clients/me/users/{email} | 
[**clientControllerVerifyUser**](ClientAPI.md#clientcontrollerverifyuser) | **POST** /clients/users/verify | 
[**clientControllerWithdrawClient**](ClientAPI.md#clientcontrollerwithdrawclient) | **POST** /clients/me/withdrawal | 
[**creditControllerCreateSellerCreditDecreaseRequest**](ClientAPI.md#creditcontrollercreatesellercreditdecreaserequest) | **POST** /credits/decrease-requests | 
[**creditControllerDeleteSellerCreditDecreaseRequest**](ClientAPI.md#creditcontrollerdeletesellercreditdecreaserequest) | **DELETE** /credits/decrease-requests/{decreaseRequestId} | 
[**creditControllerFetchAvailableCredit**](ClientAPI.md#creditcontrollerfetchavailablecredit) | **GET** /credits/available | 
[**creditControllerFetchCreditHistory**](ClientAPI.md#creditcontrollerfetchcredithistory) | **GET** /credits/histories | 
[**creditControllerFetchCreditInfo**](ClientAPI.md#creditcontrollerfetchcreditinfo) | **GET** /credits | 
[**creditControllerFetchManyMyDecreaseRequest**](ClientAPI.md#creditcontrollerfetchmanymydecreaserequest) | **GET** /credits/sellers/decrease-requests | 
[**creditControllerFetchManySellerCreditDecreaseRequest**](ClientAPI.md#creditcontrollerfetchmanysellercreditdecreaserequest) | **GET** /credits/decrease-requests | 
[**creditControllerFetchManySellerCreditInfo**](ClientAPI.md#creditcontrollerfetchmanysellercreditinfo) | **GET** /credits/sellers | 
[**creditControllerFetchSellerCreditDecreaseRequestCount**](ClientAPI.md#creditcontrollerfetchsellercreditdecreaserequestcount) | **GET** /credits/sellers/decrease-requests/count | 
[**creditControllerFetchSellerCreditUpdateHistory**](ClientAPI.md#creditcontrollerfetchsellercreditupdatehistory) | **GET** /credits/sellers/{sellerId}/histories | 
[**creditControllerIncreaseSellerCredit**](ClientAPI.md#creditcontrollerincreasesellercredit) | **POST** /credits/sellers/{sellerId} | 
[**creditControllerProcessSellerCreditDecreaseRequest**](ClientAPI.md#creditcontrollerprocesssellercreditdecreaserequest) | **POST** /credits/decrease-requests/{decreaseRequestId} | 
[**paymentCardControllerUpsert**](ClientAPI.md#paymentcardcontrollerupsert) | **PUT** /payment-cards | 
[**sellerInvitationControllerCheckExistence**](ClientAPI.md#sellerinvitationcontrollercheckexistence) | **GET** /seller-invitations/existence | 


# **businessLicenseControllerFetchByLicenseNumber**
```swift
    open class func businessLicenseControllerFetchByLicenseNumber(licenseNumber: String, completion: @escaping (_ data: [FetchByLicenseNumberResponseDto]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let licenseNumber = "licenseNumber_example" // String | 

ClientAPI.businessLicenseControllerFetchByLicenseNumber(licenseNumber: licenseNumber) { (response, error) in
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
 **licenseNumber** | **String** |  | 

### Return type

[**[FetchByLicenseNumberResponseDto]**](FetchByLicenseNumberResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **businessLicenseControllerGenerateUploadLink**
```swift
    open class func businessLicenseControllerGenerateUploadLink(completion: @escaping (_ data: GenerateUploadLinkResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


ClientAPI.businessLicenseControllerGenerateUploadLink() { (response, error) in
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

[**GenerateUploadLinkResponseDto**](GenerateUploadLinkResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **businessLicenseControllerInspect**
```swift
    open class func businessLicenseControllerInspect(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


ClientAPI.businessLicenseControllerInspect() { (response, error) in
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

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clientControllerCreateBusinessLicense**
```swift
    open class func clientControllerCreateBusinessLicense(createBusinessLicenseDto: CreateBusinessLicenseDto, completion: @escaping (_ data: CreateBusinessLicenseResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createBusinessLicenseDto = CreateBusinessLicenseDto(businessLicenseFileUrl: "businessLicenseFileUrl_example") // CreateBusinessLicenseDto | 

ClientAPI.clientControllerCreateBusinessLicense(createBusinessLicenseDto: createBusinessLicenseDto) { (response, error) in
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
 **createBusinessLicenseDto** | [**CreateBusinessLicenseDto**](CreateBusinessLicenseDto.md) |  | 

### Return type

[**CreateBusinessLicenseResponseDto**](CreateBusinessLicenseResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clientControllerCreateSeller**
```swift
    open class func clientControllerCreateSeller(createSellerDto: CreateSellerDto, completion: @escaping (_ data: CreateSellerResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createSellerDto = CreateSellerDto(name: "name_example", userEmail: "userEmail_example", sellerIdOnStore: "sellerIdOnStore_example") // CreateSellerDto | 

ClientAPI.clientControllerCreateSeller(createSellerDto: createSellerDto) { (response, error) in
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
 **createSellerDto** | [**CreateSellerDto**](CreateSellerDto.md) |  | 

### Return type

[**CreateSellerResponseDto**](CreateSellerResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clientControllerCreateUser**
```swift
    open class func clientControllerCreateUser(createUserDto: CreateUserDto, completion: @escaping (_ data: User?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createUserDto = CreateUserDto(role: 123, email: "email_example") // CreateUserDto | 

ClientAPI.clientControllerCreateUser(createUserDto: createUserDto) { (response, error) in
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
 **createUserDto** | [**CreateUserDto**](CreateUserDto.md) |  | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clientControllerFetchClient**
```swift
    open class func clientControllerFetchClient(completion: @escaping (_ data: FetchClientResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


ClientAPI.clientControllerFetchClient() { (response, error) in
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

[**FetchClientResponseDto**](FetchClientResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clientControllerFetchClientUsers**
```swift
    open class func clientControllerFetchClientUsers(id: String, orderBy: [String]? = nil, role: Role_clientControllerFetchClientUsers? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: ClientControllerFetchClientUsers200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let orderBy = ["inner_example"] // [String] | UserSortOption (optional)
let role = 987 // Double |  (optional)
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

ClientAPI.clientControllerFetchClientUsers(id: id, orderBy: orderBy, role: role, limit: limit, offset: offset) { (response, error) in
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
 **orderBy** | [**[String]**](String.md) | UserSortOption | [optional] 
 **role** | **Double** |  | [optional] 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**ClientControllerFetchClientUsers200Response**](ClientControllerFetchClientUsers200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clientControllerFetchSeller**
```swift
    open class func clientControllerFetchSeller(id: String, completion: @escaping (_ data: FetchSellerResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

ClientAPI.clientControllerFetchSeller(id: id) { (response, error) in
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

[**FetchSellerResponseDto**](FetchSellerResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clientControllerFetchSellers**
```swift
    open class func clientControllerFetchSellers(orderBy: [String]? = nil, statuses: [Statuses_clientControllerFetchSellers]? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: ClientControllerFetchSellers200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let orderBy = ["inner_example"] // [String] | SellerSortOption (optional)
let statuses = ["statuses_example"] // [String] |  (optional)
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

ClientAPI.clientControllerFetchSellers(orderBy: orderBy, statuses: statuses, limit: limit, offset: offset) { (response, error) in
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
 **orderBy** | [**[String]**](String.md) | SellerSortOption | [optional] 
 **statuses** | [**[String]**](String.md) |  | [optional] 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**ClientControllerFetchSellers200Response**](ClientControllerFetchSellers200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clientControllerInviteSeller**
```swift
    open class func clientControllerInviteSeller(inviteSellerDto: InviteSellerDto, completion: @escaping (_ data: InviteSellerResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inviteSellerDto = InviteSellerDto(clientId: "clientId_example", email: "email_example", licenseNumber: "licenseNumber_example", sellerIdOnStore: "sellerIdOnStore_example") // InviteSellerDto | 

ClientAPI.clientControllerInviteSeller(inviteSellerDto: inviteSellerDto) { (response, error) in
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
 **inviteSellerDto** | [**InviteSellerDto**](InviteSellerDto.md) |  | 

### Return type

[**InviteSellerResponseDto**](InviteSellerResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clientControllerRemoveUser**
```swift
    open class func clientControllerRemoveUser(email: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let email = "email_example" // String | 

ClientAPI.clientControllerRemoveUser(email: email) { (response, error) in
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
 **email** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clientControllerResendInvitation**
```swift
    open class func clientControllerResendInvitation(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

ClientAPI.clientControllerResendInvitation(id: id) { (response, error) in
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clientControllerSearchSellers**
```swift
    open class func clientControllerSearchSellers(name: String? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: ClientControllerSearchSellers200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String |  (optional)
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

ClientAPI.clientControllerSearchSellers(name: name, limit: limit, offset: offset) { (response, error) in
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
 **name** | **String** |  | [optional] 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**ClientControllerSearchSellers200Response**](ClientControllerSearchSellers200Response.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clientControllerSetup**
```swift
    open class func clientControllerSetup(setupDto: SetupDto, completion: @escaping (_ data: Client?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let setupDto = SetupDto(clientName: "clientName_example", currency: "currency_example", timezone: "timezone_example", state: "state_example", storeType: "storeType_example", storeSolutionType: "storeSolutionType_example", params: 123, businessLicenseFileUrl: "businessLicenseFileUrl_example") // SetupDto | 

ClientAPI.clientControllerSetup(setupDto: setupDto) { (response, error) in
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
 **setupDto** | [**SetupDto**](SetupDto.md) |  | 

### Return type

[**Client**](Client.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clientControllerUpdateClientIsStore**
```swift
    open class func clientControllerUpdateClientIsStore(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


ClientAPI.clientControllerUpdateClientIsStore() { (response, error) in
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

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clientControllerUpdateUser**
```swift
    open class func clientControllerUpdateUser(email: String, updateUserDto: UpdateUserDto, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let email = "email_example" // String | 
let updateUserDto = UpdateUserDto(role: 123) // UpdateUserDto | 

ClientAPI.clientControllerUpdateUser(email: email, updateUserDto: updateUserDto) { (response, error) in
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
 **email** | **String** |  | 
 **updateUserDto** | [**UpdateUserDto**](UpdateUserDto.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clientControllerVerifyUser**
```swift
    open class func clientControllerVerifyUser(verifyUserDto: VerifyUserDto, completion: @escaping (_ data: VerifyUserResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let verifyUserDto = VerifyUserDto(email: "email_example") // VerifyUserDto | 

ClientAPI.clientControllerVerifyUser(verifyUserDto: verifyUserDto) { (response, error) in
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
 **verifyUserDto** | [**VerifyUserDto**](VerifyUserDto.md) |  | 

### Return type

[**VerifyUserResponseDto**](VerifyUserResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clientControllerWithdrawClient**
```swift
    open class func clientControllerWithdrawClient(withdrawClientDto: WithdrawClientDto, completion: @escaping (_ data: Client?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let withdrawClientDto = WithdrawClientDto(email: "email_example", password: "password_example", reason: "reason_example") // WithdrawClientDto | 

ClientAPI.clientControllerWithdrawClient(withdrawClientDto: withdrawClientDto) { (response, error) in
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
 **withdrawClientDto** | [**WithdrawClientDto**](WithdrawClientDto.md) |  | 

### Return type

[**Client**](Client.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditControllerCreateSellerCreditDecreaseRequest**
```swift
    open class func creditControllerCreateSellerCreditDecreaseRequest(createSellerCreditDecreaseRequestDto: CreateSellerCreditDecreaseRequestDto, completion: @escaping (_ data: CreditDecreaseRequest?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createSellerCreditDecreaseRequestDto = CreateSellerCreditDecreaseRequestDto(amount: 123, reason: "reason_example") // CreateSellerCreditDecreaseRequestDto | 

ClientAPI.creditControllerCreateSellerCreditDecreaseRequest(createSellerCreditDecreaseRequestDto: createSellerCreditDecreaseRequestDto) { (response, error) in
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
 **createSellerCreditDecreaseRequestDto** | [**CreateSellerCreditDecreaseRequestDto**](CreateSellerCreditDecreaseRequestDto.md) |  | 

### Return type

[**CreditDecreaseRequest**](CreditDecreaseRequest.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditControllerDeleteSellerCreditDecreaseRequest**
```swift
    open class func creditControllerDeleteSellerCreditDecreaseRequest(decreaseRequestId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let decreaseRequestId = "decreaseRequestId_example" // String | 

ClientAPI.creditControllerDeleteSellerCreditDecreaseRequest(decreaseRequestId: decreaseRequestId) { (response, error) in
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
 **decreaseRequestId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditControllerFetchAvailableCredit**
```swift
    open class func creditControllerFetchAvailableCredit(completion: @escaping (_ data: FetchAvailableCreditResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


ClientAPI.creditControllerFetchAvailableCredit() { (response, error) in
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

[**FetchAvailableCreditResponseDto**](FetchAvailableCreditResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditControllerFetchCreditHistory**
```swift
    open class func creditControllerFetchCreditHistory(adjustmentType: AdjustmentType_creditControllerFetchCreditHistory, startDate: Date, endDate: Date, orderBy: [String]? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: CreditControllerFetchCreditHistory200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let adjustmentType = "adjustmentType_example" // String | 
let startDate = Date() // Date | 
let endDate = Date() // Date | 
let orderBy = ["inner_example"] // [String] | CreditHistorySortOption (optional)
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

ClientAPI.creditControllerFetchCreditHistory(adjustmentType: adjustmentType, startDate: startDate, endDate: endDate, orderBy: orderBy, limit: limit, offset: offset) { (response, error) in
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
 **adjustmentType** | **String** |  | 
 **startDate** | **Date** |  | 
 **endDate** | **Date** |  | 
 **orderBy** | [**[String]**](String.md) | CreditHistorySortOption | [optional] 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**CreditControllerFetchCreditHistory200Response**](CreditControllerFetchCreditHistory200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditControllerFetchCreditInfo**
```swift
    open class func creditControllerFetchCreditInfo(completion: @escaping (_ data: CreditInfoResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


ClientAPI.creditControllerFetchCreditInfo() { (response, error) in
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

[**CreditInfoResponseDto**](CreditInfoResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditControllerFetchManyMyDecreaseRequest**
```swift
    open class func creditControllerFetchManyMyDecreaseRequest(startDate: Date, endDate: Date, orderBy: [String]? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: CreditControllerFetchManyMyDecreaseRequest200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let startDate = Date() // Date | 
let endDate = Date() // Date | 
let orderBy = ["inner_example"] // [String] | DecreaseRequestSortOption (optional)
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

ClientAPI.creditControllerFetchManyMyDecreaseRequest(startDate: startDate, endDate: endDate, orderBy: orderBy, limit: limit, offset: offset) { (response, error) in
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
 **startDate** | **Date** |  | 
 **endDate** | **Date** |  | 
 **orderBy** | [**[String]**](String.md) | DecreaseRequestSortOption | [optional] 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**CreditControllerFetchManyMyDecreaseRequest200Response**](CreditControllerFetchManyMyDecreaseRequest200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditControllerFetchManySellerCreditDecreaseRequest**
```swift
    open class func creditControllerFetchManySellerCreditDecreaseRequest(status: CreditDecreaseRequestStatus? = nil, orderBy: [String]? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: CreditControllerFetchManySellerCreditDecreaseRequest200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let status = CreditDecreaseRequestStatus() // CreditDecreaseRequestStatus |  (optional)
let orderBy = ["inner_example"] // [String] | SellerCreditDecreaseRequestSortOption (optional)
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

ClientAPI.creditControllerFetchManySellerCreditDecreaseRequest(status: status, orderBy: orderBy, limit: limit, offset: offset) { (response, error) in
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
 **status** | [**CreditDecreaseRequestStatus**](.md) |  | [optional] 
 **orderBy** | [**[String]**](String.md) | SellerCreditDecreaseRequestSortOption | [optional] 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**CreditControllerFetchManySellerCreditDecreaseRequest200Response**](CreditControllerFetchManySellerCreditDecreaseRequest200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditControllerFetchManySellerCreditInfo**
```swift
    open class func creditControllerFetchManySellerCreditInfo(orderBy: [String]? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: CreditControllerFetchManySellerCreditInfo200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let orderBy = ["inner_example"] // [String] | SellerCreditInfoSortOption (optional)
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

ClientAPI.creditControllerFetchManySellerCreditInfo(orderBy: orderBy, limit: limit, offset: offset) { (response, error) in
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
 **orderBy** | [**[String]**](String.md) | SellerCreditInfoSortOption | [optional] 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**CreditControllerFetchManySellerCreditInfo200Response**](CreditControllerFetchManySellerCreditInfo200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditControllerFetchSellerCreditDecreaseRequestCount**
```swift
    open class func creditControllerFetchSellerCreditDecreaseRequestCount(status: CreditDecreaseRequestStatus? = nil, completion: @escaping (_ data: FetchSellerCreditDecreaseRequestCountResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let status = CreditDecreaseRequestStatus() // CreditDecreaseRequestStatus |  (optional)

ClientAPI.creditControllerFetchSellerCreditDecreaseRequestCount(status: status) { (response, error) in
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
 **status** | [**CreditDecreaseRequestStatus**](.md) |  | [optional] 

### Return type

[**FetchSellerCreditDecreaseRequestCountResponseDto**](FetchSellerCreditDecreaseRequestCountResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditControllerFetchSellerCreditUpdateHistory**
```swift
    open class func creditControllerFetchSellerCreditUpdateHistory(sellerId: String, creditType: CreditType? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: CreditControllerFetchSellerCreditUpdateHistory200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let sellerId = "sellerId_example" // String | 
let creditType = CreditType() // CreditType |  (optional)
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

ClientAPI.creditControllerFetchSellerCreditUpdateHistory(sellerId: sellerId, creditType: creditType, limit: limit, offset: offset) { (response, error) in
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
 **sellerId** | **String** |  | 
 **creditType** | [**CreditType**](.md) |  | [optional] 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**CreditControllerFetchSellerCreditUpdateHistory200Response**](CreditControllerFetchSellerCreditUpdateHistory200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditControllerIncreaseSellerCredit**
```swift
    open class func creditControllerIncreaseSellerCredit(sellerId: String, increaseSellerCreditDto: IncreaseSellerCreditDto, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let sellerId = "sellerId_example" // String | 
let increaseSellerCreditDto = IncreaseSellerCreditDto(amount: 123) // IncreaseSellerCreditDto | 

ClientAPI.creditControllerIncreaseSellerCredit(sellerId: sellerId, increaseSellerCreditDto: increaseSellerCreditDto) { (response, error) in
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
 **sellerId** | **String** |  | 
 **increaseSellerCreditDto** | [**IncreaseSellerCreditDto**](IncreaseSellerCreditDto.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditControllerProcessSellerCreditDecreaseRequest**
```swift
    open class func creditControllerProcessSellerCreditDecreaseRequest(decreaseRequestId: String, processSellerCreditDecreaseRequestDto: ProcessSellerCreditDecreaseRequestDto, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let decreaseRequestId = "decreaseRequestId_example" // String | 
let processSellerCreditDecreaseRequestDto = ProcessSellerCreditDecreaseRequestDto(action: CreditDecreaseRequestAction(), amount: 123, rejectionReason: "rejectionReason_example") // ProcessSellerCreditDecreaseRequestDto | 

ClientAPI.creditControllerProcessSellerCreditDecreaseRequest(decreaseRequestId: decreaseRequestId, processSellerCreditDecreaseRequestDto: processSellerCreditDecreaseRequestDto) { (response, error) in
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
 **decreaseRequestId** | **String** |  | 
 **processSellerCreditDecreaseRequestDto** | [**ProcessSellerCreditDecreaseRequestDto**](ProcessSellerCreditDecreaseRequestDto.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentCardControllerUpsert**
```swift
    open class func paymentCardControllerUpsert(upsertPaymentCardDto: UpsertPaymentCardDto, completion: @escaping (_ data: PaymentCard?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let upsertPaymentCardDto = UpsertPaymentCardDto(cardNumber: "cardNumber_example", expiry: "expiry_example", birthday: "birthday_example", pwd2Digit: "pwd2Digit_example") // UpsertPaymentCardDto | 

ClientAPI.paymentCardControllerUpsert(upsertPaymentCardDto: upsertPaymentCardDto) { (response, error) in
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
 **upsertPaymentCardDto** | [**UpsertPaymentCardDto**](UpsertPaymentCardDto.md) |  | 

### Return type

[**PaymentCard**](PaymentCard.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sellerInvitationControllerCheckExistence**
```swift
    open class func sellerInvitationControllerCheckExistence(licenseNumber: String, sellerIdOnStore: String, completion: @escaping (_ data: SellerInvitationExistenceResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let licenseNumber = "licenseNumber_example" // String | 
let sellerIdOnStore = "sellerIdOnStore_example" // String | 

ClientAPI.sellerInvitationControllerCheckExistence(licenseNumber: licenseNumber, sellerIdOnStore: sellerIdOnStore) { (response, error) in
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
 **licenseNumber** | **String** |  | 
 **sellerIdOnStore** | **String** |  | 

### Return type

[**SellerInvitationExistenceResponseDto**](SellerInvitationExistenceResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

