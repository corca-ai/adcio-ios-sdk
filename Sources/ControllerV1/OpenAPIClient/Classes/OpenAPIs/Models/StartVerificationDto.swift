//
// StartVerificationDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct StartVerificationDto: Codable, JSONEncodable, Hashable {

    public var email: String
    public var userShouldExist: Bool?

    public init(email: String, userShouldExist: Bool? = nil) {
        self.email = email
        self.userShouldExist = userShouldExist
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case userShouldExist
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(email, forKey: .email)
        try container.encodeIfPresent(userShouldExist, forKey: .userShouldExist)
    }
}

