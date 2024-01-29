//
//  AnalyticsManager.swift
//
//
//  Created by 김민식 on 2024/01/17.
//

import Foundation
import Impression

public protocol AnalyticsProductManageable {
    func viewChanged(path: String, customerID: String, productIDOnStore: String, title: String?, referrer: String?, completion: @escaping (AnalyticsResult) -> Void)
    func productPurchased(orderID: String,productIDOnStore: String, amount: Int, completion: @escaping (AnalyticsResult) -> Void)
    func addToCart(cartID: String, productIDOnStore: String, completion: @escaping (AnalyticsResult) -> Void)
}

public protocol AnalyticsViewManageable {
    func viewChanged(path: String, customerID: String, completion: @escaping (AnalyticsResult) -> Void)
    func productImpressed(option: AdcioLogOption, completion: @escaping (AnalyticsResult) -> Void)
    func productTapped(option: AdcioLogOption, completion: @escaping (AnalyticsResult) -> Void)
}

public final class AnalyticsManager: AnalyticsProductManageable, AnalyticsViewManageable {
    private let impressionManager: ImpressionManageable
    private let client: AnalyticsRepogitory
    
    public init(clientID: String) {
        self.impressionManager = ImpressionManager()
        self.client = AnalyticsClient(clientID: clientID)
    }
    
    public func addToCart(cartID: String, productIDOnStore: String, completion: @escaping (AnalyticsResult) -> Void) {
        client.addToCart(cartID: cartID, productIDOnStore: productIDOnStore, completion: completion)
    }
    
    public func viewChanged(path: String, customerID: String, productIDOnStore: String, title: String?, referrer: String?, completion: @escaping (AnalyticsResult) -> Void) {
        client.viewChanged(path: path, customerID: customerID, productIDOnStore: productIDOnStore, title: title, referrer: referrer, completion: completion)
    }
    
    public func viewChanged(path: String, customerID: String, completion: @escaping (AnalyticsResult) -> Void) {
        client.viewChanged(path: path, customerID: customerID, productIDOnStore: nil, title: nil, referrer: nil, completion: completion)
    }
    
    public func productImpressed(option: AdcioLogOption, completion: @escaping (AnalyticsResult) -> Void) {
        guard !impressable(with: option.adsetID) else {
            print("## 이미 등록됨")
            return
        }
        
        print("## append")
        append(with: option.adsetID)
        client.productImpressed(option: option, completion: completion)
    }
    
    public func productPurchased(orderID: String,productIDOnStore: String, amount: Int, completion: @escaping (AnalyticsResult) -> Void) {
        client.productPurchased(orderID: orderID, productIDOnStore: productIDOnStore, amount: amount, completion: completion)
    }
    
    public func productTapped(option: AdcioLogOption, completion: @escaping (AnalyticsResult) -> Void) {
        client.productTapped(option: option, completion: completion)
    }
    
    private func impressable(with adSetID: AdSetID) -> Bool {
        return impressionManager.impressable(with: adSetID)
    }
    
    private func append(with adSetID: AdSetID) {
        impressionManager.append(with: adSetID)
    }
}
