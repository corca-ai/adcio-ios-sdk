//
// CreditControllerFetchSellerCreditUpdateHistory200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreditControllerFetchSellerCreditUpdateHistory200Response: Codable, JSONEncodable, Hashable {

    public var count: Double?
    public var items: [FetchSellerCreditUpdateHistoryResponseDto]?

    public init(count: Double? = nil, items: [FetchSellerCreditUpdateHistoryResponseDto]? = nil) {
        self.count = count
        self.items = items
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case count
        case items
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(items, forKey: .items)
    }
}

