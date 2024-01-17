//
//  PlacementManager.swift
//
//
//  Created by 김민식 on 2024/01/17.
//

import Foundation
import Impression

public protocol PlacementManageable {
    func clearImpresstionHisstory()
    func adcioCreateSuggestion(placementID: String, customerID: String?,
                                placementPositionX: Int?, placementPositionY: Int?,
                                fromAgent: Bool, age: String?,
                                gender: Gender?, area: String?,
                                completion: @escaping (PlacementResult) -> Void)
}

public final class PlacementManager: PlacementManageable {
    private let impressionManager: ImpressionManageable
    private let client: PlacementRepogitory
    
    public init() {
        self.impressionManager = ImpressionManager()
        self.client = PlacementClient()
    }
    
    /// Impresstion 히스토리를 모두 삭제하는 메서드
    public func clearImpresstionHisstory() {
        impressionManager.clear()
    }
    
    /// ADCIO Suggestion을 생성하는 메서드
    public func adcioCreateSuggestion(placementID: String, customerID: String? = nil,
                                      placementPositionX: Int? = nil, placementPositionY: Int? = nil,
                                      fromAgent: Bool, age: String? = nil,
                                      gender: Gender? = nil, area: String? = nil,
                                      completion: @escaping (PlacementResult) -> Void) {
        client.adcioCreateSuggestion(placementId: placementID, customerId: customerID,
                                     placementPositionX: placementPositionX, placementPositionY: placementPositionY,
                                     fromAgent: fromAgent, age: age,
                                     gender: gender, area: area, completion: completion)
    }
}
