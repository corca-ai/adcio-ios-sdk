//
// TrackPurchaseRequestDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TrackPurchaseRequestDto: Codable, JSONEncodable, Hashable {

    /** ADCIO Client ID of the store. */
    public var storeId: String
    /** The session starts when the customer visits the store. It persists until the customer closes the tab, browser or app. */
    public var sessionId: String
    /** The device identifier should be unique for each device. A customer can have multiple devices. */
    public var deviceId: String
    /** The customer identifier which is generated and managed by the store. The store should configure `frontApi` parameter of ADCIO SDK so that the `customerId` can be sent to ADCIO API. */
    public var customerId: String?
    /** The version of the SDK */
    public var sdkVersion: String?
    /** Identifier for the suggestion request */
    public var requestId: String?
    /** Product ID (on store). */
    public var productIdOnStore: String?
    /** Product ID / Banner ID */
    public var adsetId: String?
    /** Category ID (on store). */
    public var categoryIdOnStore: String?
    /** Unique identifier of the order to prevent duplicate purchase tracking. */
    public var orderId: String
    /** Quantity of the product. */
    public var quantity: Double?
    /** The paid amount. It is used for calculating the ROAS. */
    public var amount: Double
    public var userAgent: String?
    public var appVersion: String?

    public init(storeId: String, sessionId: String, deviceId: String, customerId: String? = nil, sdkVersion: String? = nil, requestId: String? = nil, productIdOnStore: String? = nil, adsetId: String? = nil, categoryIdOnStore: String? = nil, orderId: String, quantity: Double? = nil, amount: Double, userAgent: String? = nil, appVersion: String? = nil) {
        self.storeId = storeId
        self.sessionId = sessionId
        self.deviceId = deviceId
        self.customerId = customerId
        self.sdkVersion = sdkVersion
        self.requestId = requestId
        self.productIdOnStore = productIdOnStore
        self.adsetId = adsetId
        self.categoryIdOnStore = categoryIdOnStore
        self.orderId = orderId
        self.quantity = quantity
        self.amount = amount
        self.userAgent = userAgent
        self.appVersion = appVersion
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case storeId
        case sessionId
        case deviceId
        case customerId
        case sdkVersion
        case requestId
        case productIdOnStore
        case adsetId
        case categoryIdOnStore
        case orderId
        case quantity
        case amount
        case userAgent
        case appVersion
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(storeId, forKey: .storeId)
        try container.encode(sessionId, forKey: .sessionId)
        try container.encode(deviceId, forKey: .deviceId)
        try container.encodeIfPresent(customerId, forKey: .customerId)
        try container.encodeIfPresent(sdkVersion, forKey: .sdkVersion)
        try container.encodeIfPresent(requestId, forKey: .requestId)
        try container.encodeIfPresent(productIdOnStore, forKey: .productIdOnStore)
        try container.encodeIfPresent(adsetId, forKey: .adsetId)
        try container.encodeIfPresent(categoryIdOnStore, forKey: .categoryIdOnStore)
        try container.encode(orderId, forKey: .orderId)
        try container.encodeIfPresent(quantity, forKey: .quantity)
        try container.encode(amount, forKey: .amount)
        try container.encodeIfPresent(userAgent, forKey: .userAgent)
        try container.encodeIfPresent(appVersion, forKey: .appVersion)
    }
}

