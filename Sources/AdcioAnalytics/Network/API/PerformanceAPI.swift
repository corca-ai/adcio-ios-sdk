//
//  PerformanceAPI.swift
//
//
//  Created by 최민재 on 10/26/23.
//

import Foundation

final class PerformanceAPI {
    static let shared = PerformanceAPI()
    
    private init() {}
    
    func callPerformance(
        _ url: String,
        requestId: String,
        adsetId: String
    ) {
        var parameters: [String : Any] = [:]
        parameters["requestId"] = requestId
        parameters["adsetId"] = adsetId
        
        APIManager.request(
            url,
            parameters: parameters
        )
    }
}
