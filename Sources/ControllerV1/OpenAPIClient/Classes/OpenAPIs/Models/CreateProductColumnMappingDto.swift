//
// CreateProductColumnMappingDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreateProductColumnMappingDto: Codable, JSONEncodable, Hashable {

    public var name: String
    public var mapping: ProductColumnMappingDto

    public init(name: String, mapping: ProductColumnMappingDto) {
        self.name = name
        self.mapping = mapping
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case mapping
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(mapping, forKey: .mapping)
    }
}

