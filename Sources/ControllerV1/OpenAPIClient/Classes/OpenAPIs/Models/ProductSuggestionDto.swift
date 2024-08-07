//
// ProductSuggestionDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProductSuggestionDto: Codable, JSONEncodable, Hashable {

    public var product: Product
    public var logOptions: LogOptionsDto

    public init(product: Product, logOptions: LogOptionsDto) {
        self.product = product
        self.logOptions = logOptions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case product
        case logOptions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(product, forKey: .product)
        try container.encode(logOptions, forKey: .logOptions)
    }
}

