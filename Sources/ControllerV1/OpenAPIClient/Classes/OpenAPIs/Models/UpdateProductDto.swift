//
// UpdateProductDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UpdateProductDto: Codable, JSONEncodable, Hashable {

    public var idOnStore: String?
    public var name: String?
    public var price: Double?
    public var summary: String?
    public var image: String?
    public var includeInRecommendation: Bool?
    public var sellerId: String?
    public var url: String?
    public var deepLink: String?
    public var caption: String?

    public init(idOnStore: String? = nil, name: String? = nil, price: Double? = nil, summary: String? = nil, image: String? = nil, includeInRecommendation: Bool? = nil, sellerId: String? = nil, url: String? = nil, deepLink: String? = nil, caption: String? = nil) {
        self.idOnStore = idOnStore
        self.name = name
        self.price = price
        self.summary = summary
        self.image = image
        self.includeInRecommendation = includeInRecommendation
        self.sellerId = sellerId
        self.url = url
        self.deepLink = deepLink
        self.caption = caption
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case idOnStore
        case name
        case price
        case summary
        case image
        case includeInRecommendation
        case sellerId
        case url
        case deepLink
        case caption
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(idOnStore, forKey: .idOnStore)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(price, forKey: .price)
        try container.encodeIfPresent(summary, forKey: .summary)
        try container.encodeIfPresent(image, forKey: .image)
        try container.encodeIfPresent(includeInRecommendation, forKey: .includeInRecommendation)
        try container.encodeIfPresent(sellerId, forKey: .sellerId)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(deepLink, forKey: .deepLink)
        try container.encodeIfPresent(caption, forKey: .caption)
    }
}

