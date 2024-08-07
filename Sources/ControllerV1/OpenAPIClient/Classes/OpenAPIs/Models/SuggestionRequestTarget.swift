//
// SuggestionRequestTarget.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SuggestionRequestTarget: Codable, JSONEncodable, Hashable {

    /** The name of the target. */
    public var keyName: String
    /** The value of the target. */
    public var values: [String]

    public init(keyName: String, values: [String]) {
        self.keyName = keyName
        self.values = values
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case keyName
        case values
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(keyName, forKey: .keyName)
        try container.encode(values, forKey: .values)
    }
}

