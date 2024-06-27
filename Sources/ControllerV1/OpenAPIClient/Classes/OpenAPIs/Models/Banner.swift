//
// Banner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Banner: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case video = "video"
        case image = "image"
    }
    public var id: String
    public var clientId: String
    public var campaigns: [Campaign]
    public var type: ModelType
    public var url: String
    public var name: String
    public var data: AnyCodable
    public var categoryId: String?
    public var productId: String?
    public var activated: Bool
    public var deepLink: String?
    public var appRoute: String?
    public var startsAt: Date
    public var endsAt: Date?
    public var createdAt: Date
    public var deletedAt: Date?

    public init(id: String, clientId: String, campaigns: [Campaign], type: ModelType, url: String, name: String, data: AnyCodable, categoryId: String?, productId: String?, activated: Bool, deepLink: String?, appRoute: String?, startsAt: Date, endsAt: Date?, createdAt: Date, deletedAt: Date?) {
        self.id = id
        self.clientId = clientId
        self.campaigns = campaigns
        self.type = type
        self.url = url
        self.name = name
        self.data = data
        self.categoryId = categoryId
        self.productId = productId
        self.activated = activated
        self.deepLink = deepLink
        self.appRoute = appRoute
        self.startsAt = startsAt
        self.endsAt = endsAt
        self.createdAt = createdAt
        self.deletedAt = deletedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case clientId
        case campaigns
        case type
        case url
        case name
        case data
        case categoryId
        case productId
        case activated
        case deepLink
        case appRoute
        case startsAt
        case endsAt
        case createdAt
        case deletedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(clientId, forKey: .clientId)
        try container.encode(campaigns, forKey: .campaigns)
        try container.encode(type, forKey: .type)
        try container.encode(url, forKey: .url)
        try container.encode(name, forKey: .name)
        try container.encode(data, forKey: .data)
        try container.encode(categoryId, forKey: .categoryId)
        try container.encode(productId, forKey: .productId)
        try container.encode(activated, forKey: .activated)
        try container.encode(deepLink, forKey: .deepLink)
        try container.encode(appRoute, forKey: .appRoute)
        try container.encode(startsAt, forKey: .startsAt)
        try container.encode(endsAt, forKey: .endsAt)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(deletedAt, forKey: .deletedAt)
    }
}

