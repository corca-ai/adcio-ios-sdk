//
// DashboardBanner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DashboardBanner: Codable, JSONEncodable, Hashable {

    public var metric: Metric
    public var id: String
    public var name: String

    public init(metric: Metric, id: String, name: String) {
        self.metric = metric
        self.id = id
        self.name = name
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case metric
        case id
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(metric, forKey: .metric)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
    }
}

