//
//  AnalyticsManager.swift
//
//
//  Created by 김민식 on 2024/01/17.
//

import Foundation
import Impression

public protocol AnalyticsProductManageable {
    func onView(customerID: String?, productIDOnStore: String, title: String?, requestID: String?, adsetID: String?, categoryIDOnStore: String?, completion: @escaping (AnalyticsResult) -> Void)
    func productPurchased(orderID: String, customerID: String?, productIDOnStore: String, amount: Int, completion: @escaping (AnalyticsResult) -> Void)
    func onAddToCart(cartID: String?, customerID: String?, productIDOnStore: String, reqeustID: String?, adsetID: String?, categoryIdOnStore: String?, quantity: Int?, completion: @escaping (AnalyticsResult) -> Void)
    
    var sessionID: String { get }
    var deviceID: String { get }
}

public protocol AnalyticsViewManageable {
    func onImpression(option: AdcioLogOption, customerID: String?, productIDOnStore: String?, completion: @escaping (AnalyticsResult) -> Void)
    func onClick(option: AdcioLogOption, customerID: String?, completion: @escaping (AnalyticsResult) -> Void)
}

public final class AnalyticsManager: AnalyticsProductManageable, AnalyticsViewManageable {
    private let impressionManager: ImpressionManageable
    private let client: AnalyticsRepogitory
    public private(set) var sessionID: String
    public private(set) var deviceID: String
    
    public init(clientID: String) {
        self.impressionManager = ImpressionManager.instance
        self.client = AnalyticsClient(clientID: clientID)
        self.sessionID = self.client.sessionID
        self.deviceID = self.client.deviceID
    }
    
    public func onAddToCart(cartID: String? = nil, customerID: String? = nil, productIDOnStore: String, reqeustID: String? = nil, adsetID: String? = nil, categoryIdOnStore: String? = nil, quantity: Int? = nil, completion: @escaping (AnalyticsResult) -> Void) {
        client.onAddToCart(cartID: cartID, customerID: customerID, productIDOnStore: productIDOnStore, reqeustID: reqeustID, adsetID: adsetID, categoryIdOnStore: categoryIdOnStore, quantity: quantity, completion: completion)
    }
    
    public func onView(customerID: String? = nil, productIDOnStore: String, title: String? = nil, requestID: String? = nil, adsetID: String? = nil, categoryIDOnStore: String? = nil, completion: @escaping (AnalyticsResult) -> Void) {
        client.onView(customerID: customerID, productIDOnStore: productIDOnStore, title: title, reqeustID: requestID, adsetID: adsetID, categoryIDOnStore: categoryIDOnStore, completion: completion)
    }
    
    public func onImpression(option: AdcioLogOption, customerID: String? = nil, productIDOnStore: String? = nil, completion: @escaping (AnalyticsResult) -> Void) {
        guard !impressable(with: option.adsetID) else {
            return
        }
        
        append(with: option.adsetID)
        client.onImpression(option: option, customerID: customerID, productIDOnStore: productIDOnStore, completion: completion)
    }
    
    public func productPurchased(orderID: String, customerID: String? = nil, productIDOnStore: String, amount: Int, completion: @escaping (AnalyticsResult) -> Void) {
        client.productPurchased(orderID: orderID, customerID: customerID, productIDOnStore: productIDOnStore, amount: amount, completion: completion)
    }
    
    public func onClick(option: AdcioLogOption, customerID: String? = nil, completion: @escaping (AnalyticsResult) -> Void) {
        client.onClick(option: option, customerID: customerID, completion: completion)
    }
    
    private func impressable(with adSetID: AdSetID) -> Bool {
        return impressionManager.impressable(with: adSetID)
    }
    
    private func append(with adSetID: AdSetID) {
        impressionManager.append(with: adSetID)
    }
}
