//
//  AdcioLogOption.swift
//
//
//  Created by 최민재 on 10/26/23.
//

import Foundation

public struct AdcioLogOption {
    public var sessionId: String
    public var deviceId: String
    public var storeId: String
    public var customerId: String
    public var requestId: String
    public var adsetId: String
    
    public init(
        sessionId: String,
        deviceId: String,
        storeId: String,
        customerId: String,
        requestId: String,
        adsetId: String
    ) {
        self.sessionId = sessionId
        self.deviceId = deviceId
        self.storeId = storeId
        self.customerId = customerId
        self.requestId = requestId
        self.adsetId = adsetId
    }
}
