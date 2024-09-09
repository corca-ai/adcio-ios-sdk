//
// DailyCreditUsedPerAdGroupResponseDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DailyCreditUsedPerAdGroupResponseDto: Codable, JSONEncodable, Hashable {

    public var dailyCreditUsed: [DailyCreditUsed]

    public init(dailyCreditUsed: [DailyCreditUsed]) {
        self.dailyCreditUsed = dailyCreditUsed
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dailyCreditUsed
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(dailyCreditUsed, forKey: .dailyCreditUsed)
    }
}

