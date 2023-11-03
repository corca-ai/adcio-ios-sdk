//
//  File.swift
//  
//
//  Created by 최민재 on 11/2/23.
//

import Foundation

final class SuggestionAPI {
    
    static let shared = SuggestionAPI()
    
    private init() {}
    
    func adcioCreateSuggestion(
        _ url: String,
        sessionId: String,
        deviceId: String,
        placementId: String,
        customerId: String?,
        placementPositionX: Int?,
        placementPositionY: Int?,
        fromAgent: Bool,
        age: String?,
        gender: Gender?,
        area: String?,
        onSuccess: @escaping (AdcioSuggestionRawData) -> Void,
        onFailure: @escaping (Error) -> Void
    ) {
        var parameters: [String : Any] = [:]
        parameters["sessionId"] = sessionId
        parameters["deviceId"] = deviceId
        parameters["placementId"] = placementId
        parameters["fromAgent"] = fromAgent
        if customerId != nil { parameters["customerId"] = customerId }
        if placementPositionX != nil { parameters["placementPositionX"] = placementPositionX }
        if placementPositionY != nil { parameters["placementPositionY"] = placementPositionY }
        if age != nil { parameters["age"] = age }
        if gender != nil { parameters["gender"] = gender?.rawValue }
        if area != nil { parameters["area"] = area }
        
        APIManager.request(
            "\(url)suggestions",
            parameters: parameters,
            completion: { result in
                switch result {
                case .success(let adcioSuggestionRawData):
                    onSuccess(adcioSuggestionRawData)
                case .failure(let error):
                    onFailure(error)
                }
            }
        )
    }
}
