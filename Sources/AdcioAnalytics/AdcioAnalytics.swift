// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import AdcioCore

private let BASE_URL = "https://receiver-dev.adcio.ai/"

public final class AdcioAnalytics {
    public static let shared = AdcioAnalytics()
    
    private init() {}
    
    private var impressionHistory: [String] = []
    
    public func clearImpressionHistory() {
        impressionHistory.removeAll()
    }
    
    public func onClick(
        option: AdcioLogOption,
        baseUrl: String? = nil
    ) {
        PerformanceAPI.shared.callPerformance(
            "\(baseUrl ?? BASE_URL)performance/click",
            requestId: option.requestId,
            adsetId: option.adsetId
        )
    }
    
    public func onImpression(
        option: AdcioLogOption,
        baseUrl: String? = nil
    ) {
        impressionHistory.append(option.adsetId)
        
        PerformanceAPI.shared.callPerformance(
            "\(baseUrl ?? BASE_URL)performance/impression",
            requestId: option.requestId,
            adsetId: option.adsetId
        )
    }
    
    public func onPurchase(
        orderId: String,
        productIdOnStore: String,
        amount: Int,
        sessionId: String? = nil,
        deviceId: String? = nil,
        storeId: String? = nil,
        customerId: String? = nil,
        baseUrl: String? = nil
    ) {
        lazy var sessionIdValue: String = try! AdcioCore.shared.sessionId()
        lazy var deviceIdValue: String = try! AdcioCore.shared.deviceId()
        lazy var storeIdValue: String = try! AdcioCore.shared.storeId
        
        EventAPI.shared.callPurchaseEvent(
            "\(baseUrl ?? BASE_URL)events/purchase",
            sessionId: sessionId ?? sessionIdValue,
            deviceId: deviceId ?? deviceIdValue,
            storeId: storeId ?? storeIdValue,
            orderId: orderId,
            productIdOnStore: productIdOnStore,
            amount: amount,
            customerId: customerId
        )
    }
    
    public func onPageView(
        path: String,
        sessionId: String? = nil,
        deviceId: String? = nil,
        storeId: String? = nil,
        title: String? = nil,
        customerId: String? = nil,
        productIdOnStore: String? = nil,
        referrer: String? = nil,
        baseUrl: String? = nil
    ) {
        lazy var sessionIdValue: String = try! AdcioCore.shared.sessionId()
        lazy var deviceIdValue: String = try! AdcioCore.shared.deviceId()
        lazy var storeIdValue: String = try! AdcioCore.shared.storeId
        
        EventAPI.shared.callPageViewEvent(
            "\(baseUrl ?? BASE_URL)events/view",
            sessionId: sessionId ?? sessionIdValue,
            deviceId: deviceId ?? deviceIdValue,
            storeId: storeId ?? storeIdValue,
            path: path,
            customerId: customerId,
            productIdOnStore: productIdOnStore,
            title: title ?? path,
            referrer: referrer
        )
    }
    
    public func onAddToCart(
        cartId: String,
        productIdOnStore: String,
        sessionId: String? = nil,
        deviceId: String? = nil,
        storeId: String? = nil,
        customerId: String? = nil,
        baseUrl: String? = nil
    ) {
        lazy var sessionIdValue: String = try! AdcioCore.shared.sessionId()
        lazy var deviceIdValue: String = try! AdcioCore.shared.deviceId()
        lazy var storeIdValue: String = try! AdcioCore.shared.storeId
        
        EventAPI.shared.callAddToCartEvent(
            "\(baseUrl ?? BASE_URL)events/add-to-cart",
            sessionId: sessionId ?? sessionIdValue,
            deviceId: deviceId ?? deviceIdValue,
            cartId: cartId,
            storeId: storeId ?? storeIdValue,
            productIdOnStore: productIdOnStore,
            customerId: customerId
        )
    }
}
