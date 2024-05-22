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
                               fromAgent: Bool, birthYear: Int?,
                               gender: Gender?, area: String?,
                               completion: @escaping (PlacementResult) -> Void)
    
    var sessionID: String { get }
    var deviceID: String { get }
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
    
    /// create Advertisements Products method
    public func adcioCreateSuggestion(clientID: String, excludingProductIDs: [String]? = nil,
                                      categoryID: String? = nil, placementID: String,
                                      customerID: String? = nil, fromAgent: Bool,
                                      birthYear: Int? = nil, gender: Gender? = nil,
                                      area: String? = nil, completion: @escaping (PlacementResult) -> Void) {
        clearImpresstionHisstory()
        
        client.adcioCreateSuggestion(clientID: clientID, excludingProductIDs: excludingProductIDs,
                                     categoryID: categoryID, placementID: placementID,
                                     customerID: customerID, fromAgent: fromAgent,
                                     birthYear: birthYear, gender: gender,
                                     area: area, completion: completion)
    }
    
    private func clearImpresstionHisstory() {
        impressionManager.clear()
    }
}
