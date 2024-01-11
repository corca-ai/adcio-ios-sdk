//
//  File.swift
//  
//
//  Created by 유현명 on 1/11/24.
//

import Foundation

public struct AdcioLogOption: Decodable, Equatable {
    public let requestID: String
    public let adsetID: String
    
    public init(requestID: String, adsetID: String) {
        self.requestID = requestID
        self.adsetID = adsetID
    }
}
