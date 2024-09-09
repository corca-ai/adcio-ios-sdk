//
// SellerInvitationFlatDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SellerInvitationFlatDto: Codable, JSONEncodable, Hashable {

    public enum Status: String, Codable, CaseIterable {
        case newClientInvited = "NEW_CLIENT_INVITED"
        case existingClientInvited = "EXISTING_CLIENT_INVITED"
        case verifying = "VERIFYING"
    }

    public var id: String
    // storeSeller를 ID로 간접 참조
    public var storeSellerId: String?
    public var licenseNumber: String
    public var status: Status
    public var createdAt: Date
    public var deletedAt: Date?

    public init(id: String, storeSellerId: String?, licenseNumber: String, status: Status, createdAt: Date, deletedAt: Date?) {
        self.id = id
        self.storeSellerId = storeSellerId
        self.licenseNumber = licenseNumber
        self.status = status
        self.createdAt = createdAt
        self.deletedAt = deletedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case storeSellerId
        case licenseNumber
        case status
        case createdAt
        case deletedAt
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(storeSellerId, forKey: .storeSellerId)
        try container.encode(licenseNumber, forKey: .licenseNumber)
        try container.encode(status, forKey: .status)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(deletedAt, forKey: .deletedAt)
    }
}
