//
// FetchCreditUsedSumResponseDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct FetchCreditUsedSumResponseDto: Codable, JSONEncodable, Hashable {

    public var freeCreditUsed: Double
    public var paidCreditUsed: Double
    public var totalCreditUsed: Double

    public init(freeCreditUsed: Double, paidCreditUsed: Double, totalCreditUsed: Double) {
        self.freeCreditUsed = freeCreditUsed
        self.paidCreditUsed = paidCreditUsed
        self.totalCreditUsed = totalCreditUsed
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case freeCreditUsed
        case paidCreditUsed
        case totalCreditUsed
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(freeCreditUsed, forKey: .freeCreditUsed)
        try container.encode(paidCreditUsed, forKey: .paidCreditUsed)
        try container.encode(totalCreditUsed, forKey: .totalCreditUsed)
    }
}

