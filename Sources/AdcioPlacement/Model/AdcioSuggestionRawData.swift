//
//  File.swift
//  
//
//  Created by 유현명 on 1/8/24.
//

import Foundation

public struct AdcioSuggestionRawData: Decodable {
    public let suggestions: [AdcioSuggestion]
}

public struct AdcioSuggestion: Decodable {
    public let logOptions: LogOptions
    public let product: Product
    public let banner: Banner?
}

public struct LogOptions: Decodable {
    public let requestId: String
    public let adsetId: String
}

public struct Product: Decodable {
    public let id: String
    public let idOnStore: String
    public let storeId: String
    public let sellerId: String
    public let name: String
    public let price: Int
    public let description: String
    public let image: String
    public let includeInRecommendation: Bool
    public let url: String?
    public let deepLink: String?
    public let caption: String?
    public let createdAt: String
    public let updatedAt: String
}

public struct Banner: Decodable {
    public let id: String
    public let clientId: String
    public let url: String
    public let name: String
    public let categoryId: String?
    public let productId: String?
    public let activated: Bool
    public let startsAt: String
    public let endsAt: String?
    public let createdAt: String
    public let deletedAt: String?
}

public enum Gender: CustomStringConvertible {
    case male
    case female
    
    public var description: String {
        return "\(self)"
    }
}
