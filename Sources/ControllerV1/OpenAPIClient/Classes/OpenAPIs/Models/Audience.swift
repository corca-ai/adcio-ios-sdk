//
// Audience.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Audience: Codable, JSONEncodable, Hashable {

    public enum Age: String, Codable, CaseIterable {
        case _10 = "10"
        case _20 = "20"
        case _30 = "30"
        case _40 = "40"
    }
    public enum Gender: String, Codable, CaseIterable {
        case male = "male"
        case female = "female"
    }
    public enum Area: String, Codable, CaseIterable {
        case northernVietnam = "NorthernVietnam"
        case southernVietnam = "SouthernVietnam"
    }
    public enum RegularCustomer: String, Codable, CaseIterable {
        case _1 = "1"
        case _3 = "3"
    }
    public var id: String
    public var age: [Age]
    public var gender: [Gender]
    public var area: [Area]
    public var regularCustomer: [RegularCustomer]
    public var campaignId: String
    public var createdAt: Date
    public var updatedAt: Date

    public init(id: String, age: [Age], gender: [Gender], area: [Area], regularCustomer: [RegularCustomer], campaignId: String, createdAt: Date, updatedAt: Date) {
        self.id = id
        self.age = age
        self.gender = gender
        self.area = area
        self.regularCustomer = regularCustomer
        self.campaignId = campaignId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case age
        case gender
        case area
        case regularCustomer
        case campaignId
        case createdAt
        case updatedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(age, forKey: .age)
        try container.encode(gender, forKey: .gender)
        try container.encode(area, forKey: .area)
        try container.encode(regularCustomer, forKey: .regularCustomer)
        try container.encode(campaignId, forKey: .campaignId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
    }
}

