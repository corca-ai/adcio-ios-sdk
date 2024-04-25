//
//  PlacementManager.swift
//
//
//  Created by 김민식 on 2024/01/17.
//

import Foundation
import Impression

public protocol PlacementManageable {
    func adcioCreateSuggestion(clientID: String, excludingProductIDs: [String]?,
                               categoryID: String?, placementID: String, customerID: String?,
                                placementPositionX: Int?, placementPositionY: Int?,
                                fromAgent: Bool, birthYear: Int?,
                                gender: Gender?, area: String?,
                                completion: @escaping (PlacementResult) -> Void)
    
//    func adcioAdvertisementsBanners(
//        placementID: String,
//        customerID: String?,
//        placementPositionX: Int?,
//        placementPositionY: Int?,
//        fromAgent: Bool,
//        birthYear: Int?,
//        gender: Gender?,
//        area: String?,
//        completion: @escaping (AdvertisementBannerResult) -> Void
//    )
}

public final class PlacementManager: PlacementManageable {
    private let impressionManager: ImpressionManageable
    private let client: PlacementRepogitory
    
    public init() {
        self.impressionManager = ImpressionManager.instance
        self.client = PlacementClient()
    }
    
    /// create Advertisements Products method
    public func adcioCreateSuggestion(clientID: String, excludingProductIDs: [String]? = nil,
                                      categoryID: String? = nil, placementID: String,
                                      customerID: String? = nil, placementPositionX: Int? = nil,
                                      placementPositionY: Int? = nil, fromAgent: Bool,
                                      birthYear: Int? = nil, gender: Gender? = nil,
                                      area: String? = nil, completion: @escaping (PlacementResult) -> Void) {
        clearImpresstionHisstory()
        
        client.adcioCreateSuggestion(clientID: clientID, excludingProductIDs: excludingProductIDs,
                                     categoryID: categoryID, placementID: placementID,
                                     customerID: customerID, placementPositionX: placementPositionX,
                                     placementPositionY: placementPositionY, fromAgent: fromAgent,
                                     birthYear: birthYear, gender: gender,
                                     area: area, completion: completion)
    }
    
//    public func adcioAdvertisementsBanners(placementID: String, customerID: String?, 
//                                           placementPositionX: Int?, placementPositionY: Int?,
//                                           fromAgent: Bool, birthYear: Int?,
//                                           gender: Gender?, area: String?,
//                                           completion: @escaping (AdvertisementBannerResult) -> Void) {
//        client.adcioAdvertisementsBanners(placementID: placementID, customerID: customerID,
//                                          placementPositionX: placementPositionX, placementPositionY: placementPositionY,
//                                          fromAgent: fromAgent, birthYear: birthYear,
//                                          gender: gender, area: area, completion: completion)
//    }
    

    private func clearImpresstionHisstory() {
        impressionManager.clear()
    }
}
