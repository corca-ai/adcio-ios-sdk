//
// CreateSellerResponseDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreateSellerResponseDto: Codable, JSONEncodable, Hashable {

    public enum Currency: String, Codable, CaseIterable {
        case krw = "KRW"
        case usd = "USD"
        case vnd = "VND"
    }
    public enum Timezone: String, Codable, CaseIterable {
        case kst = "KST"
        case ict = "ICT"
        case est = "EST"
        case cst = "CST"
        case mst = "MST"
        case pst = "PST"
        case akst = "AKST"
        case hst = "HST"
    }
    public enum ModelType: String, Codable, CaseIterable {
        case platformAndSeller = "PLATFORM_AND_SELLER"
        case ownWebsiteAndSeller = "OWN_WEBSITE_AND_SELLER"
        case platform = "PLATFORM"
        case ownWebsite = "OWN_WEBSITE"
        case seller = "SELLER"
        case admin = "ADMIN"
    }
    public var id: String
    public var name: String
    public var currency: Currency
    public var timezone: Timezone
    public var paidCredit: Double
    public var freeCredit: Double
    public var type: ModelType
    public var deletedAt: Date?
    public var paymentCardId: String?
    public var storeId: String?
    public var businessLicenseId: String?
    public var isSeller: Bool
    public var createdAt: Date
    public var users: [User]

    public init(id: String, name: String, currency: Currency, timezone: Timezone, paidCredit: Double, freeCredit: Double, type: ModelType, deletedAt: Date?, paymentCardId: String?, storeId: String?, businessLicenseId: String?, isSeller: Bool, createdAt: Date, users: [User]) {
        self.id = id
        self.name = name
        self.currency = currency
        self.timezone = timezone
        self.paidCredit = paidCredit
        self.freeCredit = freeCredit
        self.type = type
        self.deletedAt = deletedAt
        self.paymentCardId = paymentCardId
        self.storeId = storeId
        self.businessLicenseId = businessLicenseId
        self.isSeller = isSeller
        self.createdAt = createdAt
        self.users = users
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case currency
        case timezone
        case paidCredit
        case freeCredit
        case type
        case deletedAt
        case paymentCardId
        case storeId
        case businessLicenseId
        case isSeller
        case createdAt
        case users
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(currency, forKey: .currency)
        try container.encode(timezone, forKey: .timezone)
        try container.encode(paidCredit, forKey: .paidCredit)
        try container.encode(freeCredit, forKey: .freeCredit)
        try container.encode(type, forKey: .type)
        try container.encode(deletedAt, forKey: .deletedAt)
        try container.encode(paymentCardId, forKey: .paymentCardId)
        try container.encode(storeId, forKey: .storeId)
        try container.encode(businessLicenseId, forKey: .businessLicenseId)
        try container.encode(isSeller, forKey: .isSeller)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(users, forKey: .users)
    }
}

