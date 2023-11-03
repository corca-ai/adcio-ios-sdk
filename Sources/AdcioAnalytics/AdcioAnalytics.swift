// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import AdcioCore

private let baseUrl = "https://receiver.adcio.ai/"

public final class AdcioAnalytics {
    public static let shared = AdcioAnalytics()
    
    private init() {}
    
    private var impressionHistory: [String] = []
    
    public func clearImpressionHistory() {
        impressionHistory.removeAll()
    }
    
    public func onClick(
        option: AdcioLogOption,
        baseUrl url: String? = nil,
        onSuccess: ((Data) -> Void)? = nil,
        onFailure: @escaping (Error) -> Void
    ) {
        PerformanceAPI.shared.callPerformance(
            "\(url ?? baseUrl)performance/click",
            requestId: option.requestId,
            adsetId: option.adsetId,
            onSuccess: { data in
                if let onSuccess = onSuccess {
                    onSuccess(data)
                }
            },
            onFailure: { error in
                onFailure(error)
            }
        )
    }
    
    public func onImpression(
        option: AdcioLogOption,
        baseUrl url: String? = nil,
        onSuccess: ((Data) -> Void)? = nil,
        onFailure: @escaping (Error) -> Void
    ) {
        impressionHistory.append(option.adsetId)
        
        PerformanceAPI.shared.callPerformance(
            "\(url ?? baseUrl)performance/impression",
            requestId: option.requestId,
            adsetId: option.adsetId,
            onSuccess: { data in
                if let onSuccess = onSuccess {
                    onSuccess(data)
                }
            },
            onFailure: { error in
                onFailure(error)
            }
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
        baseUrl url: String? = nil,
        onSuccess: ((Data) -> Void)? = nil,
        onFailure: @escaping (Error) -> Void
    ) throws {
        EventAPI.shared.callPurchaseEvent(
            "\(url ?? baseUrl)events/purchase",
            sessionId: try sessionId ?? AdcioCore.shared.sessionId(),
            deviceId: try deviceId ?? AdcioCore.shared.deviceId(),
            storeId: try storeId ?? AdcioCore.shared.storeId,
            orderId: orderId,
            productIdOnStore: productIdOnStore,
            amount: amount,
            customerId: customerId,
            onSuccess: { data in
                if let onSuccess = onSuccess {
                    onSuccess(data)
                }
            },
            onFailure: { error in
                onFailure(error)
            }
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
        baseUrl url: String? = nil,
        onSuccess: ((Data) -> Void)? = nil,
        onFailure: @escaping (Error) -> Void
    ) throws {
        EventAPI.shared.callPageViewEvent(
            "\(url ?? baseUrl)events/view",
            sessionId: try sessionId ?? AdcioCore.shared.sessionId(),
            deviceId: try deviceId ?? AdcioCore.shared.deviceId(),
            storeId: try storeId ?? AdcioCore.shared.storeId,
            path: path,
            customerId: customerId,
            productIdOnStore: productIdOnStore,
            title: title ?? path,
            referrer: referrer,
            onSuccess: { data in
                if let onSuccess = onSuccess {
                    onSuccess(data)
                }
            },
            onFailure: { error in
                onFailure(error)
            }
        )
    }
    
    public func onAddToCart(
        cartId: String,
        productIdOnStore: String,
        sessionId: String? = nil,
        deviceId: String? = nil,
        storeId: String? = nil,
        customerId: String? = nil,
        baseUrl url: String? = nil,
        onSuccess: ((Data) -> Void)? = nil,
        onFailure: @escaping (Error) -> Void
    ) throws {
        EventAPI.shared.callAddToCartEvent(
            "\(url ?? baseUrl)events/add-to-cart",
            sessionId: try sessionId ?? AdcioCore.shared.sessionId(),
            deviceId: try deviceId ?? AdcioCore.shared.deviceId(),
            cartId: cartId,
            storeId: try storeId ?? AdcioCore.shared.storeId,
            productIdOnStore: productIdOnStore,
            customerId: customerId,
            onSuccess: { data in
                if let onSuccess = onSuccess {
                    onSuccess(data)
                }
            },
            onFailure: { error in
                onFailure(error)
            }
        )
    }
}
