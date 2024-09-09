//
// Page.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Page: Codable, JSONEncodable, Hashable {

    public var name: String
    public var clientId: String
    public var createdAt: Date
    public var deletedAt: Date?

    public init(name: String, clientId: String, createdAt: Date, deletedAt: Date?) {
        self.name = name
        self.clientId = clientId
        self.createdAt = createdAt
        self.deletedAt = deletedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case clientId
        case createdAt
        case deletedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(clientId, forKey: .clientId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(deletedAt, forKey: .deletedAt)
    }
}

