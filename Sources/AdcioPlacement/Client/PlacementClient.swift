//
//  File.swift
//
//
//  Created by 유현명 on 1/8/24.
//

import Foundation
import ControllerV1
import Core

public protocol PlacementRepogitory {
    var sessionID: SessionID { get }
    var deviceID: String { get }
    
    func createAdvertisementProducts(_ productSuggestionRequestDto: ProductSuggestionRequestDto, completion: @escaping (ProductSuggestionResponseDto?, Error?) -> Void)
    
    func createAdvertisementBanners(_ bannerSuggestionRequestDTO: BannerSuggestionRequestDto, completion: @escaping (BannerSuggestionResponseDto?, Error?) -> Void)
    
    func createRecommendationProducts(_ productSuggestionRequestDTO: ProductSuggestionRequestDto, completion: @escaping (ProductSuggestionResponseDto?, Error?) -> Void)
    
    func createRecommendationBanners(_ bannerSuggestionRequestDTO: BannerSuggestionRequestDto, completion: @escaping (BannerSuggestionResponseDto?, Error?) -> Void)
}

public final class PlacementClient: PlacementRepogitory {
    private let baseURL: URL
    private let client: HTTPClient
    private let loader: SessionLoader
    public private(set) var deviceID: String
    public private(set) var sessionID: SessionID
    
    public init(
        client: HTTPClient = URLSessionHTTPClient(),
        loader: SessionLoader = SessionClient.instance,
        deviceID: String = DeviceIDLoader.indentifier,
        baseURL: URL = URL(string: "api.adcio.ai")!
    ) {
        self.client = client
        self.loader = loader
        self.deviceID = deviceID
        self.baseURL = baseURL
        self.sessionID = loader.identifier
    }
    
    public enum NetworkError: Swift.Error {
        case connectivity
        case invalidData
    }
    
    public func createAdvertisementProducts(_ productSuggestionRequestDTO: ProductSuggestionRequestDto, completion: @escaping (ProductSuggestionResponseDto?, Error?) -> Void) {
        SuggestionAPI.advertisementsControllerAdvertiseProducts(productSuggestionRequestDto: productSuggestionRequestDTO) { data, error in
            guard error == nil else {
                completion(nil, error)
                return
            }

            completion(data, nil)
        }
    }
    
    public func createAdvertisementBanners(
        _ bannerSuggestionRequestDTO: BannerSuggestionRequestDto, completion: @escaping (BannerSuggestionResponseDto?, Error?) -> Void
    ) {
        SuggestionAPI.advertisementsControllerAdvertiseBanners(bannerSuggestionRequestDto: bannerSuggestionRequestDTO) { data, error in
            guard error == nil else {
                completion(nil, error)
                return
            }

            completion(data, nil)
        }
    }
    
    public func createRecommendationProducts(_ productSuggestionRequestDTO: ProductSuggestionRequestDto, completion: @escaping (ProductSuggestionResponseDto?, Error?) -> Void) {
        SuggestionAPI.recommendationsControllerRecommendProducts(productSuggestionRequestDto: productSuggestionRequestDTO) { data, error in
            guard error == nil else {
                completion(nil, error)
                return
            }

            completion(data, nil)
        }
    }
    
    public func createRecommendationBanners(
        _ bannerSuggestionRequestDTO: BannerSuggestionRequestDto, completion: @escaping (BannerSuggestionResponseDto?, Error?) -> Void
    ) {
        SuggestionAPI.recommendationsControllerRecommendBanners(bannerSuggestionRequestDto: bannerSuggestionRequestDTO) { data, error in
            guard error == nil else {
                completion(nil, error)
                return
            }

            completion(data, nil)
        }
    }
}
