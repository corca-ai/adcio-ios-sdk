//
// IamportPaymentVBank.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct IamportPaymentVBank: Codable, JSONEncodable, Hashable {

    public var vbankCode: String
    public var vbankDate: Double
    public var vbankHolder: String
    public var vbankIssuedAt: Double
    public var vbankName: String
    public var vbankNum: String

    public init(vbankCode: String, vbankDate: Double, vbankHolder: String, vbankIssuedAt: Double, vbankName: String, vbankNum: String) {
        self.vbankCode = vbankCode
        self.vbankDate = vbankDate
        self.vbankHolder = vbankHolder
        self.vbankIssuedAt = vbankIssuedAt
        self.vbankName = vbankName
        self.vbankNum = vbankNum
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case vbankCode = "vbank_code"
        case vbankDate = "vbank_date"
        case vbankHolder = "vbank_holder"
        case vbankIssuedAt = "vbank_issued_at"
        case vbankName = "vbank_name"
        case vbankNum = "vbank_num"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(vbankCode, forKey: .vbankCode)
        try container.encode(vbankDate, forKey: .vbankDate)
        try container.encode(vbankHolder, forKey: .vbankHolder)
        try container.encode(vbankIssuedAt, forKey: .vbankIssuedAt)
        try container.encode(vbankName, forKey: .vbankName)
        try container.encode(vbankNum, forKey: .vbankNum)
    }
}

