//
//  PlacementManager.swift
//
//
//  Created by 김민식 on 2024/01/17.
//

import Foundation
import Impression

public protocol PlacementManageable {
    var sessionID: String { get }
    var deviceID: String { get }
    
    func createAdvertisementProducts(clientID: String, excludingProductIDs: [String]?,
                                     categoryID: String?, placementID: String, customerID: String?,
                                     fromAgent: Bool?, birthYear: Int?,
                                     gender: Gender?, filters: Filter?,
                                     completion: @escaping (PlacementResult) -> Void)
    
    func createAdvertisementBanners(clientID: String, excludingProductIDs: [String]?,
                                    categoryID: String?, placementID: String,
                                    customerID: String?, fromAgent: Bool?,
                                    birthYear: Int?, gender: Gender?,
                                    completion: @escaping (AdvertisementBannerResult) -> Void)
    
    func createRecommendationProducts(clientID: String, excludingProductIDs: [String]?,
                                      categoryID: String?, placementID: String, customerID: String?,
                                      fromAgent: Bool, birthYear: Int?,
                                      gender: Gender?, filters: [Filter]?,
                                      completion: @escaping (PlacementResult) -> Void)
    
    func createRecommendationBanners(clientID: String, excludingProductIDs: [String]?,
                                     categoryID: String?, placementID: String,
                                     customerID: String?, fromAgent: Bool?,
                                     birthYear: Int?, gender: Gender?,
                                     completion: @escaping (AdvertisementBannerResult) -> Void)
}

public final class PlacementManager: PlacementManageable {
    private let impressionManager: ImpressionManageable
    private let client: PlacementRepogitory
    public private(set) var sessionID: String
    public private(set) var deviceID: String
    
    public init() {
        self.impressionManager = ImpressionManager.instance
        self.client = PlacementClient()
        self.sessionID = self.client.sessionID
        self.deviceID = self.client.deviceID
    }
    
    /// create Advertisement Products method
    public func createAdvertisementProducts(clientID: String, excludingProductIDs: [String]? = nil,
                                            categoryID: String? = nil, placementID: String,
                                            customerID: String? = nil, fromAgent: Bool? = false,
                                            birthYear: Int? = nil, gender: Gender? = nil,
                                            filters: Filter? = nil, completion: @escaping (PlacementResult) -> Void) {
        clearImpresstionHisstory()
        
        client.createAdvertisementProducts(clientID: clientID, excludingProductIDs: excludingProductIDs,
                                           categoryID: categoryID, placementID: placementID,
                                           customerID: customerID, fromAgent: fromAgent,
                                           birthYear: birthYear, gender: gender, 
                                           filters: filters, completion: completion)
    }
    
    /// create Advertisement Banners method
    public func createAdvertisementBanners(clientID: String, excludingProductIDs: [String]? = nil,
                                           categoryID: String? = nil, placementID: String,
                                           customerID: String? = nil, fromAgent: Bool? = false,
                                           birthYear: Int? = nil, gender: Gender? = nil,
                                           completion: @escaping (AdvertisementBannerResult) -> Void) {
        
        clearImpresstionHisstory()
        
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
                                             filters: [Filter]? = nil, completion: @escaping (PlacementResult) -> Void) {
        
        clearImpresstionHisstory()
        
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
        
        clearImpresstionHisstory()
        
        client.createRecommendationBanners(placementID: placementID,
                                           customerID: customerID,
                                           placementPositionX: nil,
                                           placementPositionY: nil,
                                           fromAgent: fromAgent,
                                           birthYear: birthYear,
                                           gender: gender,
                                           completion: completion)
    }
    
    
    private func clearImpresstionHisstory() {
        impressionManager.clear()
    }
}
