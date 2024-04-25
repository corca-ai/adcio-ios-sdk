//
//  AdcioSuggestionRawData.swift
//  
//
//  Created by 유현명 on 1/8/24.
//

import Foundation

public struct AdvertisementProductRawData: Decodable, Equatable {
    let placement: Placement?
    public let suggestions: [AdvertisementProduct]
}

public struct Placement: Decodable, Equatable {}

public struct AdvertisementProduct: Decodable, Equatable {
    public let logOptions: LogOptions
    public let product: Product

    public init(logOptions: LogOptions, product: Product) {
        self.logOptions = logOptions
        self.product = product
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
    public let discountPrice: Int?
    public let additionalInformation: [String]?
    public let summary: String
    public let image: String
    public let includeInRecommendation: Bool
    public let url: String?
    public let deepLink: String?
    public let caption: String?
    public let additionalImages: [String]?
    public let decorationImages: [String]?
    public let createdAt: String
    public let updatedAt: String
    public let deletedAt: String
    
    public init(id: String, idOnStore: String, storeId: String, sellerId: String, name: String, price: Int, discountPrice: Int?, additionalInformation: [String]?, summary: String, image: String, includeInRecommendation: Bool, url: String?, deepLink: String?, caption: String?, additionalImages: [String]?, decorationImages: [String]?, createdAt: String, updatedAt: String, deletedAt: String) {
        self.id = id
        self.idOnStore = idOnStore
        self.storeId = storeId
        self.sellerId = sellerId
        self.name = name
        self.price = price
        self.discountPrice = discountPrice
        self.additionalInformation = additionalInformation
        self.summary = summary
        self.image = image
        self.includeInRecommendation = includeInRecommendation
        self.url = url
        self.deepLink = deepLink
        self.caption = caption
        self.additionalImages = additionalImages
        self.decorationImages = decorationImages
        self.createdAt = createdAt
        self.updatedAt = updatedAt
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
