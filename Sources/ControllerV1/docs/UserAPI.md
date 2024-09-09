# UserAPI

All URIs are relative to *https://api-dev.adcio.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tutorialControllerCreate**](UserAPI.md#tutorialcontrollercreate) | **POST** /users/tutorials | 
[**tutorialControllerGet**](UserAPI.md#tutorialcontrollerget) | **GET** /users/tutorials/{category} | 
[**tutorialControllerGetAll**](UserAPI.md#tutorialcontrollergetall) | **GET** /users/tutorials | 
[**tutorialControllerUpdate**](UserAPI.md#tutorialcontrollerupdate) | **PUT** /users/tutorials/{category} | 
[**userControllerCheckRegistration**](UserAPI.md#usercontrollercheckregistration) | **GET** /users/registration/check | 
[**userControllerFetchToken**](UserAPI.md#usercontrollerfetchtoken) | **GET** /users/token/{clientType} | 
[**userControllerGetEmailExistence**](UserAPI.md#usercontrollergetemailexistence) | **GET** /users/email/existence | 
[**userControllerGetMe**](UserAPI.md#usercontrollergetme) | **GET** /users/me | 
[**userControllerGetRedirect**](UserAPI.md#usercontrollergetredirect) | **GET** /users/redirect | 
[**userControllerIdentify**](UserAPI.md#usercontrolleridentify) | **PUT** /users/identify | 
[**userControllerLogin**](UserAPI.md#usercontrollerlogin) | **POST** /users/login | 
[**userControllerLogout**](UserAPI.md#usercontrollerlogout) | **POST** /users/logout | 
[**userControllerRegister**](UserAPI.md#usercontrollerregister) | **POST** /users | 
[**userControllerUpdateMe**](UserAPI.md#usercontrollerupdateme) | **PUT** /users/me | 
[**userControllerUpdatePassword**](UserAPI.md#usercontrollerupdatepassword) | **PUT** /users/password | 
[**verificationControllerStartEmailVerification**](UserAPI.md#verificationcontrollerstartemailverification) | **POST** /verifications/email | 
[**verificationControllerVerifyEmailVerification**](UserAPI.md#verificationcontrollerverifyemailverification) | **POST** /verifications/email/verify | 


# **tutorialControllerCreate**
```swift
    open class func tutorialControllerCreate(tutorialRequestDto: TutorialRequestDto, completion: @escaping (_ data: Tutorial?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let tutorialRequestDto = TutorialRequestDto(category: "category_example", stage: [123], isFinished: false) // TutorialRequestDto | 

UserAPI.tutorialControllerCreate(tutorialRequestDto: tutorialRequestDto) { (response, error) in
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
 **tutorialRequestDto** | [**TutorialRequestDto**](TutorialRequestDto.md) |  | 

### Return type

[**Tutorial**](Tutorial.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tutorialControllerGet**
```swift
    open class func tutorialControllerGet(category: String, completion: @escaping (_ data: Tutorial?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let category = "category_example" // String | 

UserAPI.tutorialControllerGet(category: category) { (response, error) in
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
 **category** | **String** |  | 

### Return type

[**Tutorial**](Tutorial.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tutorialControllerGetAll**
```swift
    open class func tutorialControllerGetAll(completion: @escaping (_ data: [Tutorial]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


UserAPI.tutorialControllerGetAll() { (response, error) in
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

[**[Tutorial]**](Tutorial.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tutorialControllerUpdate**
```swift
    open class func tutorialControllerUpdate(category: String, tutorialRequestDto: TutorialRequestDto, completion: @escaping (_ data: Tutorial?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let category = "category_example" // String | 
let tutorialRequestDto = TutorialRequestDto(category: "category_example", stage: [123], isFinished: false) // TutorialRequestDto | 

UserAPI.tutorialControllerUpdate(category: category, tutorialRequestDto: tutorialRequestDto) { (response, error) in
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
 **category** | **String** |  | 
 **tutorialRequestDto** | [**TutorialRequestDto**](TutorialRequestDto.md) |  | 

### Return type

[**Tutorial**](Tutorial.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userControllerCheckRegistration**
```swift
    open class func userControllerCheckRegistration(email: String, completion: @escaping (_ data: CheckRegistrationResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let email = "email_example" // String | 

UserAPI.userControllerCheckRegistration(email: email) { (response, error) in
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

[**CheckRegistrationResponseDto**](CheckRegistrationResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userControllerFetchToken**
```swift
    open class func userControllerFetchToken(clientType: String, completion: @escaping (_ data: AccessToken?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let clientType = "clientType_example" // String | 

UserAPI.userControllerFetchToken(clientType: clientType) { (response, error) in
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
 **clientType** | **String** |  | 

### Return type

[**AccessToken**](AccessToken.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userControllerGetEmailExistence**
```swift
    open class func userControllerGetEmailExistence(email: String, completion: @escaping (_ data: CheckEmailExistsResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let email = "email_example" // String | 

UserAPI.userControllerGetEmailExistence(email: email) { (response, error) in
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

[**CheckEmailExistsResponseDto**](CheckEmailExistsResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userControllerGetMe**
```swift
    open class func userControllerGetMe(completion: @escaping (_ data: GetMeResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


UserAPI.userControllerGetMe() { (response, error) in
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

[**GetMeResponseDto**](GetMeResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userControllerGetRedirect**
```swift
    open class func userControllerGetRedirect(completion: @escaping (_ data: GetRedirectResponseDto?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


UserAPI.userControllerGetRedirect() { (response, error) in
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

[**GetRedirectResponseDto**](GetRedirectResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userControllerIdentify**
```swift
    open class func userControllerIdentify(identifyDto: IdentifyDto, completion: @escaping (_ data: AccessToken?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let identifyDto = IdentifyDto(email: "email_example", code: "code_example", password: "password_example") // IdentifyDto | 

UserAPI.userControllerIdentify(identifyDto: identifyDto) { (response, error) in
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
 **identifyDto** | [**IdentifyDto**](IdentifyDto.md) |  | 

### Return type

[**AccessToken**](AccessToken.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userControllerLogin**
```swift
    open class func userControllerLogin(loginDto: LoginDto, completion: @escaping (_ data: AccessToken?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let loginDto = LoginDto(email: "email_example", password: "password_example") // LoginDto | 

UserAPI.userControllerLogin(loginDto: loginDto) { (response, error) in
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
 **loginDto** | [**LoginDto**](LoginDto.md) |  | 

### Return type

[**AccessToken**](AccessToken.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userControllerLogout**
```swift
    open class func userControllerLogout(completion: @escaping (_ data: AccessToken?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


UserAPI.userControllerLogout() { (response, error) in
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

[**AccessToken**](AccessToken.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userControllerRegister**
```swift
    open class func userControllerRegister(registerDto: RegisterDto, completion: @escaping (_ data: AccessToken?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let registerDto = RegisterDto(email: "email_example", code: "code_example", password: "password_example", emailReceiptAgreed: false) // RegisterDto | 

UserAPI.userControllerRegister(registerDto: registerDto) { (response, error) in
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
 **registerDto** | [**RegisterDto**](RegisterDto.md) |  | 

### Return type

[**AccessToken**](AccessToken.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userControllerUpdateMe**
```swift
    open class func userControllerUpdateMe(updateMeDto: UpdateMeDto, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let updateMeDto = UpdateMeDto(emailReceiptAgreed: false) // UpdateMeDto | 

UserAPI.userControllerUpdateMe(updateMeDto: updateMeDto) { (response, error) in
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
 **updateMeDto** | [**UpdateMeDto**](UpdateMeDto.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userControllerUpdatePassword**
```swift
    open class func userControllerUpdatePassword(updatePasswordDto: UpdatePasswordDto, completion: @escaping (_ data: AccessToken?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let updatePasswordDto = UpdatePasswordDto(password: "password_example", newPassword: "newPassword_example") // UpdatePasswordDto | 

UserAPI.userControllerUpdatePassword(updatePasswordDto: updatePasswordDto) { (response, error) in
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
 **updatePasswordDto** | [**UpdatePasswordDto**](UpdatePasswordDto.md) |  | 

### Return type

[**AccessToken**](AccessToken.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verificationControllerStartEmailVerification**
```swift
    open class func verificationControllerStartEmailVerification(startVerificationDto: StartVerificationDto, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let startVerificationDto = StartVerificationDto(email: "email_example", userShouldExist: false) // StartVerificationDto | 

UserAPI.verificationControllerStartEmailVerification(startVerificationDto: startVerificationDto) { (response, error) in
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
 **startVerificationDto** | [**StartVerificationDto**](StartVerificationDto.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verificationControllerVerifyEmailVerification**
```swift
    open class func verificationControllerVerifyEmailVerification(verifyCodeDto: VerifyCodeDto, completion: @escaping (_ data: Verification?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let verifyCodeDto = VerifyCodeDto(email: "email_example", code: "code_example") // VerifyCodeDto | 

UserAPI.verificationControllerVerifyEmailVerification(verifyCodeDto: verifyCodeDto) { (response, error) in
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
 **verifyCodeDto** | [**VerifyCodeDto**](VerifyCodeDto.md) |  | 

### Return type

[**Verification**](Verification.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

