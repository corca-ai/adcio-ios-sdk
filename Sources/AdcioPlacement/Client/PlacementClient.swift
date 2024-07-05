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
    var userAgent: String { get }
    
    func createAdvertisementProducts(_ productSuggestionRequestDto: ProductSuggestionRequestDto, completion: @escaping (ProductSuggestionResponseDto?, Error?) -> Void)
    
    func createAdvertisementBanners(_ bannerSuggestionRequestDTO: BannerSuggestionRequestDto, completion: @escaping (BannerSuggestionResponseDto?, Error?) -> Void)
    
    func createRecommendationProducts(_ productSuggestionRequestDTO: ProductSuggestionRequestDto, completion: @escaping (ProductSuggestionResponseDto?, Error?) -> Void)
    
    func createRecommendationBanners(_ bannerSuggestionRequestDTO: BannerSuggestionRequestDto, completion: @escaping (BannerSuggestionResponseDto?, Error?) -> Void)
}

public final class PlacementClient: PlacementRepogitory {
    private let loader: SessionLoader
    public private(set) var deviceID: String
    public private(set) var sessionID: SessionID
    public private(set) var userAgent: String
    
    public init(
        loader: SessionLoader = SessionClient.instance,
        deviceID: String = DeviceIDLoader.indentifier,
        userAgent: String = DeviceIDLoader.userAgent
    ) {
        self.loader = loader
        self.deviceID = deviceID
        self.sessionID = loader.identifier
        self.userAgent = userAgent
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
