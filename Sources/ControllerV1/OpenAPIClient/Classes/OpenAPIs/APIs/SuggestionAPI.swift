//
// SuggestionAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class SuggestionAPI {

    /**
     
     
     - parameter bannerSuggestionRequestDto: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func advertisementsControllerAdvertiseBanners(bannerSuggestionRequestDto: BannerSuggestionRequestDto, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BannerSuggestionResponseDto?, _ error: Error?) -> Void)) -> RequestTask {
        return advertisementsControllerAdvertiseBannersWithRequestBuilder(bannerSuggestionRequestDto: bannerSuggestionRequestDto).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     
     - POST /v1/advertisements/banners
     - Fetch a personalized banner for advertisement.
     - parameter bannerSuggestionRequestDto: (body)  
     - returns: RequestBuilder<BannerSuggestionResponseDto> 
     */
    open class func advertisementsControllerAdvertiseBannersWithRequestBuilder(bannerSuggestionRequestDto: BannerSuggestionRequestDto) -> RequestBuilder<BannerSuggestionResponseDto> {
        let localVariablePath = "/v1/advertisements/banners"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: bannerSuggestionRequestDto)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BannerSuggestionResponseDto>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     
     
     - parameter productSuggestionRequestDto: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func advertisementsControllerAdvertiseProducts(productSuggestionRequestDto: ProductSuggestionRequestDto, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ProductSuggestionResponseDto?, _ error: Error?) -> Void)) -> RequestTask {
        return advertisementsControllerAdvertiseProductsWithRequestBuilder(productSuggestionRequestDto: productSuggestionRequestDto).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     
     - POST /v1/advertisements/products
     - Fetch a personalized product for advertisement.
     - parameter productSuggestionRequestDto: (body)  
     - returns: RequestBuilder<ProductSuggestionResponseDto> 
     */
    open class func advertisementsControllerAdvertiseProductsWithRequestBuilder(productSuggestionRequestDto: ProductSuggestionRequestDto) -> RequestBuilder<ProductSuggestionResponseDto> {
        let localVariablePath = "/v1/advertisements/products"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: productSuggestionRequestDto)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ProductSuggestionResponseDto>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     
     
     - parameter bannerSuggestionRequestDto: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func recommendationsControllerRecommendBanners(bannerSuggestionRequestDto: BannerSuggestionRequestDto, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BannerSuggestionResponseDto?, _ error: Error?) -> Void)) -> RequestTask {
        return recommendationsControllerRecommendBannersWithRequestBuilder(bannerSuggestionRequestDto: bannerSuggestionRequestDto).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     
     - POST /v1/recommendations/banners
     - Fetch a personalized banner for recommendation.
     - parameter bannerSuggestionRequestDto: (body)  
     - returns: RequestBuilder<BannerSuggestionResponseDto> 
     */
    open class func recommendationsControllerRecommendBannersWithRequestBuilder(bannerSuggestionRequestDto: BannerSuggestionRequestDto) -> RequestBuilder<BannerSuggestionResponseDto> {
        let localVariablePath = "/v1/recommendations/banners"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: bannerSuggestionRequestDto)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BannerSuggestionResponseDto>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     
     
     - parameter productSuggestionRequestDto: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func recommendationsControllerRecommendProducts(productSuggestionRequestDto: ProductSuggestionRequestDto, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ProductSuggestionResponseDto?, _ error: Error?) -> Void)) -> RequestTask {
        return recommendationsControllerRecommendProductsWithRequestBuilder(productSuggestionRequestDto: productSuggestionRequestDto).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     
     - POST /v1/recommendations/products
     - Fetch a personalized product for recommendation.
     - parameter productSuggestionRequestDto: (body)  
     - returns: RequestBuilder<ProductSuggestionResponseDto> 
     */
    open class func recommendationsControllerRecommendProductsWithRequestBuilder(productSuggestionRequestDto: ProductSuggestionRequestDto) -> RequestBuilder<ProductSuggestionResponseDto> {
        let localVariablePath = "/v1/recommendations/products"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: productSuggestionRequestDto)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ProductSuggestionResponseDto>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     
     
     - parameter bannerSuggestionRequestDto: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func suggestionControllerAdvertiseBanners(bannerSuggestionRequestDto: BannerSuggestionRequestDto, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BannerSuggestionResponseDto?, _ error: Error?) -> Void)) -> RequestTask {
        return suggestionControllerAdvertiseBannersWithRequestBuilder(bannerSuggestionRequestDto: bannerSuggestionRequestDto).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     
     - POST /advertisements/banners
     - Fetch a personalized banner for advertisement.
     - parameter bannerSuggestionRequestDto: (body)  
     - returns: RequestBuilder<BannerSuggestionResponseDto> 
     */
    open class func suggestionControllerAdvertiseBannersWithRequestBuilder(bannerSuggestionRequestDto: BannerSuggestionRequestDto) -> RequestBuilder<BannerSuggestionResponseDto> {
        let localVariablePath = "/advertisements/banners"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: bannerSuggestionRequestDto)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BannerSuggestionResponseDto>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     
     
     - parameter productSuggestionRequestDto: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func suggestionControllerAdvertiseProducts(productSuggestionRequestDto: ProductSuggestionRequestDto, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ProductSuggestionResponseDto?, _ error: Error?) -> Void)) -> RequestTask {
        return suggestionControllerAdvertiseProductsWithRequestBuilder(productSuggestionRequestDto: productSuggestionRequestDto).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     
     - POST /advertisements/products
     - Fetch a personalized product for advertisement.
     - parameter productSuggestionRequestDto: (body)  
     - returns: RequestBuilder<ProductSuggestionResponseDto> 
     */
    open class func suggestionControllerAdvertiseProductsWithRequestBuilder(productSuggestionRequestDto: ProductSuggestionRequestDto) -> RequestBuilder<ProductSuggestionResponseDto> {
        let localVariablePath = "/advertisements/products"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: productSuggestionRequestDto)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ProductSuggestionResponseDto>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     
     
     - parameter bannerSuggestionRequestDto: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func suggestionControllerRecommendBanners(bannerSuggestionRequestDto: BannerSuggestionRequestDto, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BannerSuggestionResponseDto?, _ error: Error?) -> Void)) -> RequestTask {
        return suggestionControllerRecommendBannersWithRequestBuilder(bannerSuggestionRequestDto: bannerSuggestionRequestDto).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     
     - POST /recommendations/banners
     - Fetch a personalized banner for recommendation.
     - parameter bannerSuggestionRequestDto: (body)  
     - returns: RequestBuilder<BannerSuggestionResponseDto> 
     */
    open class func suggestionControllerRecommendBannersWithRequestBuilder(bannerSuggestionRequestDto: BannerSuggestionRequestDto) -> RequestBuilder<BannerSuggestionResponseDto> {
        let localVariablePath = "/recommendations/banners"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: bannerSuggestionRequestDto)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BannerSuggestionResponseDto>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     
     
     - parameter productSuggestionRequestDto: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func suggestionControllerRecommendProducts(productSuggestionRequestDto: ProductSuggestionRequestDto, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ProductSuggestionResponseDto?, _ error: Error?) -> Void)) -> RequestTask {
        return suggestionControllerRecommendProductsWithRequestBuilder(productSuggestionRequestDto: productSuggestionRequestDto).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     
     - POST /recommendations/products
     - Fetch a personalized product for recommendation.
     - parameter productSuggestionRequestDto: (body)  
     - returns: RequestBuilder<ProductSuggestionResponseDto> 
     */
    open class func suggestionControllerRecommendProductsWithRequestBuilder(productSuggestionRequestDto: ProductSuggestionRequestDto) -> RequestBuilder<ProductSuggestionResponseDto> {
        let localVariablePath = "/recommendations/products"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: productSuggestionRequestDto)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ProductSuggestionResponseDto>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}