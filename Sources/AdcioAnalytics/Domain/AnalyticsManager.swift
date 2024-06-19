//
//  AnalyticsManager.swift
//
//
//  Created by 김민식 on 2024/01/17.
//

import Foundation

public protocol AnalyticsProductManageable {
    func onView(customerID: String?, productIDOnStore: String, requestID: String?, adsetID: String?, categoryIDOnStore: String?, completion: @escaping (AnalyticsResult) -> Void)
    func onPurchase(orderID: String, customerID: String?, requestID: String?, adsetID: String?, categoryIDOnStore: String?, quantity: Int?, productIDOnStore: String, amount: Int, completion: @escaping (AnalyticsResult) -> Void)
    func onAddToCart(cartID: String?, customerID: String?, productIDOnStore: String?, reqeustID: String?, adsetID: String?, categoryIdOnStore: String?, quantity: Int?, completion: @escaping (AnalyticsResult) -> Void)
    
    var sessionID: String { get }
    var deviceID: String { get }
}

public protocol AnalyticsViewManageable {
    func onImpression(option: AdcioLogOption, customerID: String?, productIDOnStore: String?, completion: @escaping (AnalyticsResult) -> Void)
    func onClick(option: AdcioLogOption, customerID: String?, productIDOnStore: String?, completion: @escaping (AnalyticsResult) -> Void)
}

public final class AnalyticsManager: AnalyticsProductManageable, AnalyticsViewManageable {
    private let client: AnalyticsRepogitory
    public private(set) var sessionID: String
    public private(set) var deviceID: String
    
    public init(clientID: String) {
        self.client = AnalyticsClient(clientID: clientID)
        self.sessionID = self.client.sessionID
        self.deviceID = self.client.deviceID
    }
    
    public func onAddToCart(cartID: String? = nil, customerID: String? = nil, productIDOnStore: String? = nil, reqeustID: String? = nil, adsetID: String? = nil, categoryIdOnStore: String? = nil, quantity: Int? = nil, completion: @escaping (AnalyticsResult) -> Void) {
        client.onAddToCart(cartID: cartID, customerID: customerID, productIDOnStore: productIDOnStore, reqeustID: reqeustID, adsetID: adsetID, categoryIdOnStore: categoryIdOnStore, quantity: quantity, completion: completion)
    }
    
    public func onView(customerID: String? = nil, productIDOnStore: String, requestID: String? = nil, adsetID: String? = nil, categoryIDOnStore: String? = nil, completion: @escaping (AnalyticsResult) -> Void) {
        client.onView(customerID: customerID, productIDOnStore: productIDOnStore, reqeustID: requestID, adsetID: adsetID, categoryIDOnStore: categoryIDOnStore, completion: completion)
    }
    
    public func onImpression(option: AdcioLogOption, customerID: String? = nil, productIDOnStore: String? = nil, completion: @escaping (AnalyticsResult) -> Void) {
        client.onImpression(option: option, customerID: customerID, productIDOnStore: productIDOnStore, completion: completion)
    }
    
    public func onPurchase(orderID: String, customerID: String?, requestID: String?, adsetID: String?, categoryIDOnStore: String?, quantity: Int?, productIDOnStore: String, amount: Int, completion: @escaping (AnalyticsResult) -> Void) {
        client.onPurchase(orderID: orderID, customerID: customerID, requestID: requestID, adsetID: adsetID, categoryIDOnStore: categoryIDOnStore, quantity: quantity, productIDOnStore: productIDOnStore, amount: amount, completion: completion)
    }
    
    public func onClick(option: AdcioLogOption, customerID: String? = nil, productIDOnStore: String? = nil, completion: @escaping (AnalyticsResult) -> Void) {
        client.onClick(option: option, customerID: customerID, productIDOnStore: productIDOnStore, completion: completion)
    }
}
