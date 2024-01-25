//
//  PlacementManager.swift
//
//
//  Created by 김민식 on 2024/01/17.
//

import Foundation
import Impression

protocol PlacementManageable {
    func clearImpresstionHisstory()
    func adcioCreateSuggestion(placementID: String, customerID: String?,
                                placementPositionX: Int?, placementPositionY: Int?,
                                fromAgent: Bool, birthYear: Int?,
                                gender: Gender?, area: String?,
                                categoryIdOnStore: String?, completion: @escaping (PlacementResult) -> Void)
}

public final class PlacementManager: PlacementManageable {
    private let impressionManager: ImpressionManageable
    private let client: PlacementRepogitory
    
    public init() {
        self.impressionManager = ImpressionManager()
        self.client = PlacementClient()
    }
    
    /// ADCIO Suggestion을 생성하는 메서드
    public func adcioCreateSuggestion(placementID: String, customerID: String? = nil,
                                      placementPositionX: Int? = nil, placementPositionY: Int? = nil,
                                      fromAgent: Bool, birthYear: Int? = nil,
                                      gender: Gender? = nil, area: String? = nil,
                                      categoryIdOnStore: String? = nil, completion: @escaping (PlacementResult) -> Void) {
        client.adcioCreateSuggestion(placementID: placementID, customerID: customerID,
                                     placementPositionX: placementPositionX, placementPositionY: placementPositionY,
                                     fromAgent: fromAgent, birthYear: birthYear,
                                     gender: gender, area: area,
                                     categoryIdOnStore: categoryIdOnStore, completion: completion)
    }

    internal func clearImpresstionHisstory() {
        impressionManager.clear()
    }
}
