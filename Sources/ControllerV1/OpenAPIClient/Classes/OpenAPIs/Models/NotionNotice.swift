//
// NotionNotice.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NotionNotice: Codable, JSONEncodable, Hashable {

    public var url: String
    public var title: String
    public var releasedAt: String?

    public init(url: String, title: String, releasedAt: String? = nil) {
        self.url = url
        self.title = title
        self.releasedAt = releasedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case url
        case title
        case releasedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(url, forKey: .url)
        try container.encode(title, forKey: .title)
        try container.encodeIfPresent(releasedAt, forKey: .releasedAt)
    }
}

