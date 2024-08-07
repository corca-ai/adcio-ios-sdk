//
// FetchActivePlacementsResponseDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct FetchActivePlacementsResponseDto: Codable, JSONEncodable, Hashable {

    public var id: String
    public var type: String
    public var suggestionType: String

    public init(id: String, type: String, suggestionType: String) {
        self.id = id
        self.type = type
        self.suggestionType = suggestionType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case type
        case suggestionType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(type, forKey: .type)
        try container.encode(suggestionType, forKey: .suggestionType)
    }
}

