//
//  AnalyticsManager.swift
//
//
//  Created by 김민식 on 2024/01/17.
//

import Foundation
import ReceiverV1

public protocol AnalyticsManageable {
    var sessionID: String { get }
    var deviceID: String { get }
    
    func onPurchase(_ purchaseRequest: TrackPurchaseRequestDto, completion: @escaping (AnalyticsResult) -> Void)
    func onClick(_ clickRequestDTO: TrackClickRequestDto, completion: @escaping (AnalyticsResult) -> Void)
    func onImpression(_ impressionRequestDTO: TrackImpressionRequestDto, completion: @escaping (AnalyticsResult) -> Void)
    func onView(_ pageViewRequestDTO: TrackPageViewRequestDto, completion: @escaping (AnalyticsResult) -> Void)
    func onAddToCart(_ addToCartRequestDTO: TrackAddToCartRequestDto, completion: @escaping (AnalyticsResult) -> Void)
}

public final class AnalyticsManager: AnalyticsManageable {
    private let client: AnalyticsRepogitory
    public private(set) var sessionID: String
    public private(set) var deviceID: String
    
    public init(clientID: String) {
        self.client = AnalyticsClient(clientID: clientID)
        self.sessionID = self.client.sessionID
        self.deviceID = self.client.deviceID
    }
    
    public func onPurchase(_ purchaseRequest: TrackPurchaseRequestDto, completion: @escaping (AnalyticsResult) -> Void) {
        client.onPurchase(purchaseRequest, completion: completion)
    }
    
    public func onClick(_ clickRequestDTO: TrackClickRequestDto, completion: @escaping (AnalyticsResult) -> Void) {
        client.onClick(clickRequestDTO, completion: completion)
    }
    
    public func onImpression(_ impressionRequestDTO: TrackImpressionRequestDto, completion: @escaping (AnalyticsResult) -> Void) {
        client.onImpression(impressionRequestDTO, completion: completion)
    }
    
    public func onView(_ pageViewRequestDTO: TrackPageViewRequestDto, completion: @escaping (AnalyticsResult) -> Void) {
        client.onView(pageViewRequestDTO, completion: completion)
    }
    
    public func onAddToCart(_ addToCartRequestDTO: TrackAddToCartRequestDto, completion: @escaping (AnalyticsResult) -> Void) {
        client.onAddToCart(addToCartRequestDTO, completion: completion)
    }
}
