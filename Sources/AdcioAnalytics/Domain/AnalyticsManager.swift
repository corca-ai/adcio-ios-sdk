//
//  AnalyticsManager.swift
//
//
//  Created by 김민식 on 2024/01/17.
//

import Foundation
import Impression

public protocol AnalyticsProductManageable {
    func viewChanged(customerID: String?, productIDOnStore: String, title: String?, requestID: String?, adsetID: String?, categoryIDOnStore: String?, completion: @escaping (AnalyticsResult) -> Void)
    func productPurchased(orderID: String, customerID: String?, productIDOnStore: String, amount: Int, completion: @escaping (AnalyticsResult) -> Void)
    func addToCart(cartID: String, customerID: String?, productIDOnStore: String, completion: @escaping (AnalyticsResult) -> Void)
    
    var sessionID: String { get }
    var deviceID: String { get }
}

public protocol AnalyticsViewManageable {
    func productImpressed(option: AdcioLogOption, customerID: String?, completion: @escaping (AnalyticsResult) -> Void)
    func productTapped(option: AdcioLogOption, customerID: String?, completion: @escaping (AnalyticsResult) -> Void)
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
    
    public func addToCart(cartID: String, customerID: String? = nil, productIDOnStore: String, completion: @escaping (AnalyticsResult) -> Void) {
        client.addToCart(cartID: cartID, customerID: customerID, productIDOnStore: productIDOnStore, completion: completion)
    }
    
    public func viewChanged(customerID: String? = nil, productIDOnStore: String, title: String? = nil, requestID: String? = nil, adsetID: String? = nil, categoryIDOnStore: String? = nil, completion: @escaping (AnalyticsResult) -> Void) {
        client.viewChanged(customerID: customerID, productIDOnStore: productIDOnStore, title: title, reqeustID: requestID, adsetID: adsetID, categoryIDOnStore: categoryIDOnStore, completion: completion)
    }
    
    public func productImpressed(option: AdcioLogOption, customerID: String? = nil, completion: @escaping (AnalyticsResult) -> Void) {
        guard !impressable(with: option.adsetID) else {
            return
        }
        
        append(with: option.adsetID)
        client.productImpressed(option: option, customerID: customerID, completion: completion)
    }
    
    public func productPurchased(orderID: String, customerID: String? = nil, productIDOnStore: String, amount: Int, completion: @escaping (AnalyticsResult) -> Void) {
        client.productPurchased(orderID: orderID, customerID: customerID, productIDOnStore: productIDOnStore, amount: amount, completion: completion)
    }
    
    public func productTapped(option: AdcioLogOption, customerID: String? = nil, completion: @escaping (AnalyticsResult) -> Void) {
        client.productTapped(option: option, customerID: customerID, completion: completion)
    }
    
    private func impressable(with adSetID: AdSetID) -> Bool {
        return impressionManager.impressable(with: adSetID)
    }
    
    private func append(with adSetID: AdSetID) {
        impressionManager.append(with: adSetID)
    }
}
