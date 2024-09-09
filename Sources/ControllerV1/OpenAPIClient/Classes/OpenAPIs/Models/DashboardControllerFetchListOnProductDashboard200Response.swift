//
// DashboardControllerFetchListOnProductDashboard200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DashboardControllerFetchListOnProductDashboard200Response: Codable, JSONEncodable, Hashable {

    public var count: Double?
    public var items: [DashboardProduct]?

    public init(count: Double? = nil, items: [DashboardProduct]? = nil) {
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

