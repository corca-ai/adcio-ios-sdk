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
        sessionId: String,
        deviceId: String,
        storeId: String,
        customerId: String?,
        requestId: String,
        adsetId: String,
        onSuccess: ((Data) -> Void)? = nil,
        onFailure: @escaping (Error) -> Void
    ) {
        var parameters: [String : Any] = [:]
        parameters["sessionId"] = sessionId
        parameters["deviceId"] = deviceId
        parameters["storeId"] = storeId
        parameters["customerId"] = customerId
        parameters["requestId"] = requestId
        parameters["adsetId"] = adsetId
        
        APIManager.request(
            url,
            parameters: parameters,
            completion: { result in
                switch result {
                case .success(let data):
                    // success
                    if let onSuccess = onSuccess {
                        onSuccess(data)
                    }
                case .failure(let error):
                    // error
                    onFailure(error)
                }
            }
        )
    }
}
