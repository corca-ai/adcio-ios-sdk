//
//  PlacementManager.swift
//
//
//  Created by 김민식 on 2024/01/17.
//

import Foundation
import ControllerV1

public protocol PlacementManageable {
    var sessionID: String { get }
    var deviceID: String { get }
    
    func createAdvertisementProducts(clientID: String, excludingProductIDs: [String]?,
                                             categoryID: String?, placementID: String,
                                             customerID: String?, fromAgent: Bool,
                                             birthYear: Double?, gender: ProductSuggestionRequestDto.Gender?,
                                             filters: [[String: ProductFilterOperationDto]]?, completion: @escaping (ProductSuggestionResponseDto?, Error?) -> Void)
    
    func createAdvertisementBanners(clientID: String, excludingProductIDs: [String]?,
                                           categoryID: String?, placementID: String,
                                           customerID: String?, fromAgent: Bool?,
                                           birthYear: Double?, gender: BannerSuggestionRequestDto.Gender?,
                                           completion: @escaping (BannerSuggestionResponseDto?, Error?) -> Void)
    
    func createRecommendationProducts(clientID: String, excludingProductIDs: [String]?,
                                             categoryID: String?, placementID: String,
                                             customerID: String?, fromAgent: Bool,
                                             birthYear: Double?, gender: ProductSuggestionRequestDto.Gender?,
                                             filters: [[String: ProductFilterOperationDto]]?, completion: @escaping (ProductSuggestionResponseDto?, Error?) -> Void)
    
    func createRecommendationBanners(clientID: String, excludingProductIDs: [String]?,
                                           categoryID: String?, placementID: String,
                                           customerID: String?, fromAgent: Bool?,
                                           birthYear: Double?, gender: BannerSuggestionRequestDto.Gender?,
                                           completion: @escaping (BannerSuggestionResponseDto?, Error?) -> Void)
}

public final class PlacementManager: PlacementManageable {
    private let client: PlacementRepogitory
    public private(set) var sessionID: String
    public private(set) var deviceID: String
    
    public init() {
        self.client = PlacementClient()
        self.sessionID = self.client.sessionID
        self.deviceID = self.client.deviceID
    }
    
    /// create Advertisement Products method
    public func createAdvertisementProducts(clientID: String, excludingProductIDs: [String]? = nil,
                                             categoryID: String? = nil, placementID: String,
                                             customerID: String? = nil, fromAgent: Bool,
                                             birthYear: Double? = nil, gender: ProductSuggestionRequestDto.Gender? = nil,
                                             filters: [[String: ProductFilterOperationDto]]? = nil, completion: @escaping (ProductSuggestionResponseDto?, Error?) -> Void) {
        client.createAdvertisementProducts(ProductSuggestionRequestDto(sessionId: sessionID, deviceId: deviceID, customerId: customerID, placementId: placementID, placementPositionX: nil, placementPositionY: nil, fromAgent: fromAgent, birthYear: birthYear, gender: gender, clientId: clientID, excludingProductIds: excludingProductIDs, categoryId: categoryID, filters: filters), completion: completion)
    }
    
    /// create Advertisement Banners method
    public func createAdvertisementBanners(clientID: String, excludingProductIDs: [String]? = nil,
                                           categoryID: String? = nil, placementID: String,
                                           customerID: String? = nil, fromAgent: Bool? = false,
                                           birthYear: Double? = nil, gender: BannerSuggestionRequestDto.Gender? = nil,
                                           completion: @escaping (BannerSuggestionResponseDto?, Error?) -> Void) {
        client.createAdvertisementBanners(
            BannerSuggestionRequestDto(sessionId: sessionID, deviceId: deviceID, customerId: customerID, placementId: placementID, placementPositionX: nil, placementPositionY: nil, fromAgent: fromAgent, birthYear: birthYear, gender: gender), completion: completion)
    }
    
    /// create Recommendation Products method
    public func createRecommendationProducts(clientID: String, excludingProductIDs: [String]? = nil,
                                             categoryID: String? = nil, placementID: String,
                                             customerID: String? = nil, fromAgent: Bool,
                                             birthYear: Double? = nil, gender: ProductSuggestionRequestDto.Gender? = nil,
                                             filters: [[String: ProductFilterOperationDto]]? = nil, completion: @escaping (ProductSuggestionResponseDto?, Error?) -> Void) {
        client.createRecommendationProducts(ProductSuggestionRequestDto(sessionId: sessionID, deviceId: deviceID, customerId: customerID, placementId: placementID, placementPositionX: nil, placementPositionY: nil, fromAgent: fromAgent, birthYear: birthYear, gender: gender, clientId: clientID, excludingProductIds: excludingProductIDs, categoryId: categoryID, filters: filters), completion: completion)
    }
    
    /// create Recommendation Bannders method
    public func createRecommendationBanners(clientID: String, excludingProductIDs: [String]? = nil,
                                           categoryID: String? = nil, placementID: String,
                                           customerID: String? = nil, fromAgent: Bool? = false,
                                           birthYear: Double? = nil, gender: BannerSuggestionRequestDto.Gender? = nil,
                                           completion: @escaping (BannerSuggestionResponseDto?, Error?) -> Void) {
        client.createRecommendationBanners(
            BannerSuggestionRequestDto(sessionId: sessionID, deviceId: deviceID, customerId: customerID, placementId: placementID, placementPositionX: nil, placementPositionY: nil, fromAgent: fromAgent, birthYear: birthYear, gender: gender), completion: completion)
    }
}
