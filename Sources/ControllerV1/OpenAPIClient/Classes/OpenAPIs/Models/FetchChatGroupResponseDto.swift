//
// FetchChatGroupResponseDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct FetchChatGroupResponseDto: Codable, JSONEncodable, Hashable {

    public var id: String
    public var customerId: String
    public var createdAt: Date
    public var dialogue: [ChatDialogueResponseDto]

    public init(id: String, customerId: String, createdAt: Date, dialogue: [ChatDialogueResponseDto]) {
        self.id = id
        self.customerId = customerId
        self.createdAt = createdAt
        self.dialogue = dialogue
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case customerId
        case createdAt
        case dialogue
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(customerId, forKey: .customerId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(dialogue, forKey: .dialogue)
    }
}

