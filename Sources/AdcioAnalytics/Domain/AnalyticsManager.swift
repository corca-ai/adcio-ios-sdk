//
//  AnalyticsManager.swift
//
//
//  Created by 김민식 on 2024/01/17.
//

import Foundation
import Impression

public protocol AnalyticsManageable {
    func impressable(with adSetID: AdSetID) -> Bool
    func append(with adSetID: AdSetID)
    func addToCart(cartID: String, productIDOnStore: String, completion: @escaping (AnalyticsResult) -> Void)
    func pageChanged(path: String, completion: @escaping (AnalyticsResult) -> Void)
    func productImpressed(option: AdcioLogOption, completion: @escaping (AnalyticsResult) -> Void)
    func productPurchased(orderID: String,productIDOnStore: String, amount: Int, completion: @escaping (AnalyticsResult) -> Void)
    func productTapped(option: AdcioLogOption, completion: @escaping (AnalyticsResult) -> Void)
}

public final class AnalyticsManager: AnalyticsManageable {
    private let impressionManager: ImpressionManageable
    private let client: AnalyticsRepogitory
    
    public init(clientID: String) {
        self.impressionManager = ImpressionManager()
        self.client = AnalyticsClient(clientID: clientID)
    }
    
    public func impressable(with adSetID: AdSetID) -> Bool {
        return impressionManager.impressable(with: adSetID)
    }
    
    public func append(with adSetID: AdSetID) {
        impressionManager.append(with: adSetID)
    }
    
    public func addToCart(cartID: String, productIDOnStore: String, completion: @escaping (AnalyticsResult) -> Void) {
        client.addToCart(cartID: cartID, productIDOnStore: productIDOnStore, completion: completion)
    }
    
    public func pageChanged(path: String, completion: @escaping (AnalyticsResult) -> Void) {
        client.pageChanged(path: path, completion: completion)
    }
    
    public func productImpressed(option: AdcioLogOption, completion: @escaping (AnalyticsResult) -> Void) {
        client.productImpressed(option: option, completion: completion)
    }
    
    public func productPurchased(orderID: String,productIDOnStore: String, amount: Int, completion: @escaping (AnalyticsResult) -> Void) {
        client.productPurchased(orderID: orderID, productIDOnStore: productIDOnStore, amount: amount, completion: completion)
    }
    
    public func productTapped(option: AdcioLogOption, completion: @escaping (AnalyticsResult) -> Void) {
        client.productTapped(option: option, completion: completion)
    }
}
