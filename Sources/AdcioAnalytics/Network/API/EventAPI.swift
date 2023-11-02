//
//  EventAPI.swift
//
//
//  Created by 최민재 on 10/25/23.
//

import Foundation

final class EventAPI {
    static let shared = EventAPI()
    
    private init() {}
    
    func callPageViewEvent(
        _ url: String,
        sessionId: String,
        deviceId: String,
        storeId: String,
        path: String,
        customerId: String? = nil,
        productIdOnStore: String? = nil,
        title: String? = nil,
        referrer: String? = nil,
        onSuccess: ((Data) -> Void)? = nil,
        onFailure: @escaping (Error) -> Void
    ) {
        var parameters: [String : Any] = [:]
        parameters["sessionId"] = sessionId
        parameters["deviceId"] = deviceId
        parameters["storeId"] = storeId
        parameters["path"] = path
        if customerId != nil { parameters["customerId"] = customerId }
        if productIdOnStore != nil { parameters["productIdOnStore"] = productIdOnStore }
        if title != nil { parameters["title"] = title }
        if referrer != nil { parameters["referrer"] = referrer }
        
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
    
    func callPurchaseEvent(
        _ url: String,
        sessionId: String,
        deviceId: String,
        storeId: String,
        orderId: String,
        productIdOnStore: String,
        amount: Int,
        customerId: String? = nil,
        onSuccess: ((Data) -> Void)? = nil,
        onFailure: @escaping (Error) -> Void
    ) {
        var parameters: [String : Any] = [:]
        parameters["sessionId"] = sessionId
        parameters["deviceId"] = deviceId
        parameters["storeId"] = storeId
        parameters["orderId"] = orderId
        parameters["productIdOnStore"] = productIdOnStore
        parameters["amount"] = amount
        if customerId != nil { parameters["customerId"] = customerId }
        
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
    
    func callAddToCartEvent(
        _ url: String,
        sessionId: String,
        deviceId: String,
        cartId: String,
        storeId: String,
        productIdOnStore: String,
        customerId: String? = nil,
        onSuccess: ((Data) -> Void)? = nil,
        onFailure: @escaping (Error) -> Void
    ) {
        var parameters: [String : Any] = [:]
        parameters["sessionId"] = sessionId
        parameters["deviceId"] = deviceId
        parameters["cartId"] = cartId
        parameters["storeId"] = storeId
        parameters["productIdOnStore"] = productIdOnStore
        if customerId != nil { parameters["customerId"] = customerId }
        
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
