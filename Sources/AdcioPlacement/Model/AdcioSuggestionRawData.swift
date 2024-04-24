//
//  AdcioSuggestionRawData.swift
//  
//
//  Created by 유현명 on 1/8/24.
//

import Foundation

public struct AdcioSuggestionRawData: Decodable, Equatable {
    let placement: Placement?
    public let suggestions: [AdcioSuggestion]
}

struct Placement: Decodable, Equatable {}

public struct AdcioSuggestion: Decodable, Equatable {
    public let logOptions: LogOptions
    public let product: Product
    public let banner: Banner?

    public init(logOptions: LogOptions, product: Product, banner: Banner?) {
        self.logOptions = logOptions
        self.product = product
        self.banner = banner
    }
}

public struct LogOptions: Decodable, Equatable {
    public let requestId: String
    public let adsetId: String
    
    public init(requestId: String, adsetId: String) {
        self.requestId = requestId
        self.adsetId = adsetId
    }
}

public struct Product: Decodable, Equatable {
    public let id: String
    public let idOnStore: String
    public let storeId: String
    public let sellerId: String
    public let name: String
    public let price: Int
    public let summary: String
    public let image: String
    public let includeInRecommendation: Bool
    public let url: String?
    public let deepLink: String?
    public let caption: String?
    public let createdAt: String
    public let updatedAt: String
    
    public init(id: String, idOnStore: String, storeId: String, sellerId: String, name: String, price: Int, summary: String, image: String, includeInRecommendation: Bool, url: String?, deepLink: String?, caption: String?, createdAt: String, updatedAt: String) {
        self.id = id
        self.idOnStore = idOnStore
        self.storeId = storeId
        self.sellerId = sellerId
        self.name = name
        self.price = price
        self.summary = summary
        self.image = image
        self.includeInRecommendation = includeInRecommendation
        self.url = url
        self.deepLink = deepLink
        self.caption = caption
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}

public struct Banner: Decodable, Equatable {
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
    
    public init(id: String, clientId: String, url: String, name: String, categoryId: String?, productId: String?, activated: Bool, startsAt: String, endsAt: String?, createdAt: String, deletedAt: String?) {
        self.id = id
        self.clientId = clientId
        self.url = url
        self.name = name
        self.categoryId = categoryId
        self.productId = productId
        self.activated = activated
        self.startsAt = startsAt
        self.endsAt = endsAt
        self.createdAt = createdAt
        self.deletedAt = deletedAt
    }
}

public enum Gender: CustomStringConvertible, Equatable {
    case male
    case female
    
    public var description: String {
        switch self {
        case .male: return "male"
        case .female: return "female"
        }
    }
}
