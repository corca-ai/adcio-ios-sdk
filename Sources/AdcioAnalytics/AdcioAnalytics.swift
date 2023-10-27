// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

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
        EventAPI.shared.callPurchaseEvent(
            "\(baseUrl ?? BASE_URL)events/purchase",
            sessionId: sessionId ?? "SAMPLE SESSION ID",
            deviceId: deviceId ?? "SAMPLE DEVICE ID",
            storeId: storeId ?? "SAMPLE STORE ID",
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
        EventAPI.shared.callPageViewEvent(
            "\(baseUrl ?? BASE_URL)events/view",
            sessionId: sessionId ?? "SAMPLE SESSION ID" ,
            deviceId: deviceId ?? "SAMPLE DEVICE ID",
            storeId: storeId ?? "SAMPLE STORE ID",
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
        EventAPI.shared.callAddToCartEvent(
            "\(baseUrl ?? BASE_URL)events/add-to-cart",
            sessionId: sessionId ?? "SAMPLE SESSION ID",
            deviceId: deviceId ?? "SAMPLE DEVICE ID",
            cartId: cartId,
            storeId: storeId ?? "SAMPLE STORE ID",
            productIdOnStore: productIdOnStore,
            customerId: customerId
        )
    }
}
