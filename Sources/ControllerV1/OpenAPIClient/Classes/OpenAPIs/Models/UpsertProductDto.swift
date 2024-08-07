//
// UpsertProductDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UpsertProductDto: Codable, JSONEncodable, Hashable {

    public var idOnStore: String?
    public var name: String?
    public var price: Double?
    public var discountPrice: Double?
    public var additionalInformation: [AnyCodable]?
    public var summary: String?
    public var image: String?
    public var includeInRecommendation: Bool?
    public var sellerId: String?
    public var sellerIdOnStore: String?
    public var url: String?
    public var deepLink: String?
    public var caption: String?
    public var additionalImages: [String]?
    public var decorationImages: [String]?
    public var detail: ProductDetailDto?

    public init(idOnStore: String? = nil, name: String? = nil, price: Double? = nil, discountPrice: Double? = nil, additionalInformation: [AnyCodable]? = nil, summary: String? = nil, image: String? = nil, includeInRecommendation: Bool? = nil, sellerId: String? = nil, sellerIdOnStore: String? = nil, url: String? = nil, deepLink: String? = nil, caption: String? = nil, additionalImages: [String]? = nil, decorationImages: [String]? = nil, detail: ProductDetailDto? = nil) {
        self.idOnStore = idOnStore
        self.name = name
        self.price = price
        self.discountPrice = discountPrice
        self.additionalInformation = additionalInformation
        self.summary = summary
        self.image = image
        self.includeInRecommendation = includeInRecommendation
        self.sellerId = sellerId
        self.sellerIdOnStore = sellerIdOnStore
        self.url = url
        self.deepLink = deepLink
        self.caption = caption
        self.additionalImages = additionalImages
        self.decorationImages = decorationImages
        self.detail = detail
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case idOnStore
        case name
        case price
        case discountPrice
        case additionalInformation
        case summary
        case image
        case includeInRecommendation
        case sellerId
        case sellerIdOnStore
        case url
        case deepLink
        case caption
        case additionalImages
        case decorationImages
        case detail
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(idOnStore, forKey: .idOnStore)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(price, forKey: .price)
        try container.encodeIfPresent(discountPrice, forKey: .discountPrice)
        try container.encodeIfPresent(additionalInformation, forKey: .additionalInformation)
        try container.encodeIfPresent(summary, forKey: .summary)
        try container.encodeIfPresent(image, forKey: .image)
        try container.encodeIfPresent(includeInRecommendation, forKey: .includeInRecommendation)
        try container.encodeIfPresent(sellerId, forKey: .sellerId)
        try container.encodeIfPresent(sellerIdOnStore, forKey: .sellerIdOnStore)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(deepLink, forKey: .deepLink)
        try container.encodeIfPresent(caption, forKey: .caption)
        try container.encodeIfPresent(additionalImages, forKey: .additionalImages)
        try container.encodeIfPresent(decorationImages, forKey: .decorationImages)
        try container.encodeIfPresent(detail, forKey: .detail)
    }
}

