//
//  AdcioSuggestion.swift
//  
//
//  Created by 최민재 on 11/2/23.
//

import Foundation

public struct AdcioSuggestion : Codable {
    public let logOptions: LogOptions
    public let product: Product
    public let banner: Banner?
}
