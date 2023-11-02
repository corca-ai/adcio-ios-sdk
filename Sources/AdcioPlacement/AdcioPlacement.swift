// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import AdcioCore

private let BASE_URL = "https://api.adcio.ai/"

public final class AdcioPlacement {
    public static let shared = AdcioPlacement()
    
    private init() {}
    
    public func adcioCreateSuggestion(
        placementId: String,
        customerId: String? = nil,
        placementPositionX: Int? = nil,
        placementPositionY: Int? = nil,
        fromAgent: Bool = false,
        age: String? = nil,
        gender: Gender? = nil,
        area: String? = nil,
        sessionId: String? = nil,
        deviceId: String? = nil,
        baseUrl: String? = nil,
        onSuccess: @escaping (Data) -> Void,
        onFailure: @escaping (Error) -> Void
    ) throws {
        SuggestionAPI.shared.adcioCreateSuggestion(
            "\(baseUrl ?? BASE_URL)",
            sessionId: try sessionId ?? AdcioCore.shared.sessionId(),
            deviceId: try deviceId ?? AdcioCore.shared.deviceId(),
            placementId: placementId,
            customerId: customerId,
            placementPositionX: placementPositionX,
            placementPositionY: placementPositionY,
            fromAgent: fromAgent,
            age: age,
            gender: gender,
            area: area,
            onSuccess: { data in
                onSuccess(data)
            },
            onFailure: { error in
                onFailure(error)
            }
        )
    }
}
