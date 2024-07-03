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
                                            customerID: String?, fromAgent: Bool?,
                                            birthYear: Int?, gender: Gender?,
                                            filters: [String: Filter]?, completion: @escaping (ProductSuggestionResponseDto?, Error?) -> Void)
    
    func createAdvertisementBanners(clientID: String, excludingProductIDs: [String]?,
                                    categoryID: String?, placementID: String,
                                    customerID: String?, fromAgent: Bool?,
                                    birthYear: Int?, gender: Gender?,
                                    completion: @escaping (AdvertisementBannerResult) -> Void)
    
    func createRecommendationProducts(clientID: String, excludingProductIDs: [String]?,
                                      categoryID: String?, placementID: String, customerID: String?,
                                      fromAgent: Bool, birthYear: Int?,
                                      gender: Gender?, filters: [String: Filter]?,
                                      completion: @escaping (PlacementResult) -> Void)
    
    func createRecommendationBanners(clientID: String, excludingProductIDs: [String]?,
                                     categoryID: String?, placementID: String,
                                     customerID: String?, fromAgent: Bool?,
                                     birthYear: Int?, gender: Gender?,
                                     completion: @escaping (AdvertisementBannerResult) -> Void)
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
                                            customerID: String? = nil, fromAgent: Bool? = false,
                                            birthYear: Int? = nil, gender: Gender? = nil,
                                            filters: [String: Filter]? = nil, completion: @escaping (ProductSuggestionResponseDto?, Error?) -> Void) {
        client.createAdvertisementProducts(ProductSuggestionRequestDto(sessionId: sessionID, deviceId: deviceID, placementId: placementID, clientId: clientID, excludingProductIds: excludingProductIDs, categoryId: categoryID), completion: completion)
    }
    
    /// create Advertisement Banners method
    public func createAdvertisementBanners(clientID: String, excludingProductIDs: [String]? = nil,
                                           categoryID: String? = nil, placementID: String,
                                           customerID: String? = nil, fromAgent: Bool? = false,
                                           birthYear: Int? = nil, gender: Gender? = nil,
                                           completion: @escaping (AdvertisementBannerResult) -> Void) {
        client.createAdvertisementBanners(placementID: placementID,
                                          customerID: customerID,
                                          placementPositionX: nil,
                                          placementPositionY: nil,
                                          fromAgent: fromAgent,
                                          birthYear: birthYear,
                                          gender: gender,
                                          completion: completion)
    }
    
    /// create Recommendation Products method
    public func createRecommendationProducts(clientID: String, excludingProductIDs: [String]? = nil,
                                             categoryID: String? = nil, placementID: String,
                                             customerID: String? = nil, fromAgent: Bool,
                                             birthYear: Int? = nil, gender: Gender? = nil,
                                             filters: [String: Filter]? = nil, completion: @escaping (PlacementResult) -> Void) {
        client.createRecommendationProducts(clientID: clientID, excludingProductIDs: excludingProductIDs,
                                            categoryID: categoryID, placementID: placementID,
                                            customerID: customerID, fromAgent: fromAgent,
                                            birthYear: birthYear, gender: gender,
                                            filters: filters, completion: completion)
    }
    
    /// create Recommendation Bannders method
    public func createRecommendationBanners(clientID: String, excludingProductIDs: [String]? = nil,
                                            categoryID: String? = nil, placementID: String,
                                            customerID: String? = nil, fromAgent: Bool? = nil,
                                            birthYear: Int? = nil, gender: Gender? = nil,
                                            completion: @escaping (AdvertisementBannerResult) -> Void) {
        client.createRecommendationBanners(placementID: placementID,
                                           customerID: customerID,
                                           placementPositionX: nil,
                                           placementPositionY: nil,
                                           fromAgent: fromAgent,
                                           birthYear: birthYear,
                                           gender: gender,
                                           completion: completion)
    }
}
