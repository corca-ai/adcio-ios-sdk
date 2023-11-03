//
//  AdcioLogOption.swift
//
//
//  Created by 최민재 on 10/26/23.
//

import Foundation

public struct AdcioLogOption {
    public var requestId: String
    public var adsetId: String
    
    public init(requestId: String, adsetId: String) {
        self.requestId = requestId
        self.adsetId = adsetId
    }
}
