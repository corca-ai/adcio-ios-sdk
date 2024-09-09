//
//  AnalyticsManager.swift
//
//
//  Created by 김민식 on 2024/01/17.
//

import Foundation
import ReceiverV1

public protocol AnalyticsProductManageable {
    func onAddToCart(cartID: String?, customerID: String?, productIDOnStore: String?, requestID: String?, adsetID: String?, categoryIdOnStore: String?, quantity: Double?, completion: @escaping (TrackResponseDto?, Error?) -> Void)
    func onView(customerID: String?, productIDOnStore: String, requestID: String?, adsetID: String?, categoryIDOnStore: String?, completion: @escaping (TrackResponseDto?, Error?) -> Void)
    func onPurchase(orderID: String, customerID: String?, requestID: String?, adsetID: String?, categoryIDOnStore: String?, quantity: Double?, productIDOnStore: String, amount: Double, completion: @escaping (TrackResponseDto?, Error?) -> Void)
    
    var sessionID: String { get }
    var deviceID: String { get }
}

public protocol AnalyticsViewManageable {
    func onImpression(option: AdcioLogOption, customerID: String?, productIDOnStore: String?, completion: @escaping (TrackResponseDto?, Error?) -> Void)
    func onClick(option: AdcioLogOption, customerID: String?, productIDOnStore: String?, completion: @escaping (TrackResponseDto?, Error?) -> Void)
}

public final class AnalyticsManager: AnalyticsProductManageable, AnalyticsViewManageable {
    private let client: AnalyticsRepogitory
    public private(set) var sessionID: String
    public private(set) var deviceID: String
    private var clientID: String
    private var userAgent: String
    private var appVersion: String
    private let sdkVersion = "iOS 1.3.1"
    
    public init(clientID: String, userAgent: String?, appVersion: String) {
        self.client = AnalyticsClient(clientID: clientID)
        self.sessionID = self.client.sessionID
        self.deviceID = self.client.deviceID
        self.userAgent = userAgent ?? ""
        self.appVersion = appVersion
        self.clientID = clientID
    }
    
    public func onAddToCart(cartID: String? = nil, customerID: String? = nil, productIDOnStore: String? = nil, requestID: String? = nil, adsetID: String? = nil, categoryIdOnStore: String? = nil, quantity: Double? = nil, completion: @escaping (TrackResponseDto?, Error?) -> Void) {
        client.onAddToCart(
            TrackAddToCartRequestDto(
                storeId: clientID,
                sessionId: sessionID,
                deviceId: deviceID,
                customerId: customerID,
                sdkVersion: sdkVersion,
                requestId: requestID,
                productIdOnStore: productIDOnStore,
                adsetId: adsetID,
                categoryIdOnStore: categoryIdOnStore,
                cartId: cartID,
                quantity: quantity,
                userAgent: userAgent.isEmpty ? client.userAgent : userAgent,
                appVersion: appVersion
            ),
            completion: completion)
    }
    
    public func onView(customerID: String? = nil, productIDOnStore: String, requestID: String? = nil, adsetID: String? = nil, categoryIDOnStore: String? = nil, completion: @escaping (TrackResponseDto?, Error?) -> Void) {
        client.onView(
            TrackPageViewRequestDto(
                storeId: clientID,
                sessionId: sessionID,
                deviceId: deviceID,
                customerId: customerID,
                sdkVersion: sdkVersion,
                requestId: requestID,
                productIdOnStore: productIDOnStore,
                adsetId: adsetID,
                categoryIdOnStore: categoryIDOnStore,
                userAgent: userAgent.isEmpty ? client.userAgent : userAgent,
                appVersion: appVersion
            ),
            completion: completion)
    }
    
    public func onImpression(option: AdcioLogOption, customerID: String? = nil, productIDOnStore: String? = nil, completion: @escaping (TrackResponseDto?, Error?) -> Void) {
        client.onImpression(
            TrackImpressionRequestDto(
                storeId: clientID,
                sessionId: sessionID,
                deviceId: deviceID,
                customerId: customerID,
                sdkVersion: sdkVersion,
                requestId: option.requestID,
                productIdOnStore: productIDOnStore,
                adsetId: option.adsetID,
                userAgent: userAgent.isEmpty ? client.userAgent : userAgent,
                appVersion: appVersion
            ),
            completion: completion)
    }
    
    public func onPurchase(orderID: String, customerID: String? = nil, requestID: String? = nil, adsetID: String? = nil, categoryIDOnStore: String? = nil, quantity: Double? = nil, productIDOnStore: String, amount: Double, completion: @escaping (TrackResponseDto?, Error?) -> Void) {
        client.onPurchase(
            TrackPurchaseRequestDto(
                storeId: clientID,
                sessionId: sessionID,
                deviceId: deviceID,
                customerId: customerID,
                sdkVersion: sdkVersion,
                requestId: requestID,
                productIdOnStore: productIDOnStore,
                adsetId: adsetID,
                categoryIdOnStore: categoryIDOnStore,
                orderId: orderID,
                quantity: quantity,
                amount: amount,
                userAgent: userAgent.isEmpty ? client.userAgent : userAgent,
                appVersion: appVersion
            ),
            completion: completion)
    }
    
    public func onClick(option: AdcioLogOption, customerID: String? = nil, productIDOnStore: String? = nil, completion: @escaping (TrackResponseDto?, Error?) -> Void) {
        client.onClick(
            TrackClickRequestDto(
                storeId: clientID,
                sessionId: sessionID,
                deviceId: deviceID,
                customerId: customerID,
                sdkVersion: sdkVersion,
                requestId: option.requestID,
                productIdOnStore: productIDOnStore,
                adsetId: option.adsetID,
                userAgent: userAgent.isEmpty ? client.userAgent : userAgent,
                appVersion: appVersion
            ),
            completion: completion)
    }
}
