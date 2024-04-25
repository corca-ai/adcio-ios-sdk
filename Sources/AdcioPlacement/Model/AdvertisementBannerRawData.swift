//
//  AdvertisementBannerRawData.swift
//
//
//  Created by 김민식 on 4/25/24.
//

import Foundation

public struct AdvertisementBannerRawData: Decodable, Equatable {
    let placement: Placement?
    public let suggestions: [AdvertisementBanner]
}

public struct AdvertisementBanner: Decodable, Equatable {
    public let logOptions: LogOptions
    public let banner: Banner

    public init(logOptions: LogOptions, banner: Banner) {
        self.logOptions = logOptions
        self.banner = banner
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
