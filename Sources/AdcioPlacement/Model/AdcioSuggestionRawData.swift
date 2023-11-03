//
//  AdcioSuggestionRawData.swift
//
//
//  Created by 최민재 on 11/2/23.
//

import Foundation

public struct AdcioSuggestionRawData: Codable {
    public let suggestions: [AdcioSuggestion]
    // public let placement: [String : String]
}
