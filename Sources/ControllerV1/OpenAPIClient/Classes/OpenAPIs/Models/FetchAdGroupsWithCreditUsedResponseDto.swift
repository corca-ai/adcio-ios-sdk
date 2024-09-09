//
// FetchAdGroupsWithCreditUsedResponseDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct FetchAdGroupsWithCreditUsedResponseDto: Codable, JSONEncodable, Hashable {

    public var totalCreditUsed: Double
    public var id: String
    public var title: String
    public var activated: Bool

    public init(totalCreditUsed: Double, id: String, title: String, activated: Bool) {
        self.totalCreditUsed = totalCreditUsed
        self.id = id
        self.title = title
        self.activated = activated
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case totalCreditUsed
        case id
        case title
        case activated
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(totalCreditUsed, forKey: .totalCreditUsed)
        try container.encode(id, forKey: .id)
        try container.encode(title, forKey: .title)
        try container.encode(activated, forKey: .activated)
    }
}

