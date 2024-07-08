//
// ProductSuggestionResponseDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProductSuggestionResponseDto: Codable, JSONEncodable, Hashable {

    public var suggestions: [ProductSuggestionDto]
    public var placement: SuggestionResponsePlacementType
    public var metadata: Metadata

    public init(suggestions: [ProductSuggestionDto], placement: SuggestionResponsePlacementType, metadata: Metadata) {
        self.suggestions = suggestions
        self.placement = placement
        self.metadata = metadata
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case suggestions
        case placement
        case metadata
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(suggestions, forKey: .suggestions)
        try container.encode(placement, forKey: .placement)
        try container.encode(metadata, forKey: .metadata)
    }
}

public struct Metadata: Codable, JSONEncodable, Hashable {
    public var isBaseline: Bool
    
    public init(isBaseline: Bool) {
        self.isBaseline = isBaseline
    }
}
