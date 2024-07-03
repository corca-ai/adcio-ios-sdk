//
// UpsertProductFailedRow.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UpsertProductFailedRow: Codable, JSONEncodable, Hashable {

    public enum Reasons: String, Codable, CaseIterable {
        case upsertproductfaileddeuplicatedrow = "upsertProductFailedDeuplicatedRow"
        case upsertproductfailedsellerisnotexist = "upsertProductFailedSellerIsNotExist"
        case upsertproductfailedidisempty = "upsertProductFailedIdIsEmpty"
        case upsertproductfailednameisempty = "upsertProductFailedNameIsEmpty"
        case upsertproductfailedpriceisempty = "upsertProductFailedPriceIsEmpty"
        case upsertproductfailedimageisempty = "upsertProductFailedImageIsEmpty"
        case upsertproductfailedimageisinvalid = "upsertProductFailedImageIsInvalid"
        case upsertproductfailedurlisinvalid = "upsertProductFailedUrlIsInvalid"
        case upsertproductfailedadditionalimagesisinvalid = "upsertProductFailedAdditionalImagesIsInvalid"
        case upsertproductfaileddecorationimagesisinvalid = "upsertProductFailedDecorationImagesIsInvalid"
    }
    public var idOnStore: String
    public var name: String
    public var reasons: [Reasons]

    public init(idOnStore: String, name: String, reasons: [Reasons]) {
        self.idOnStore = idOnStore
        self.name = name
        self.reasons = reasons
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case idOnStore
        case name
        case reasons
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(idOnStore, forKey: .idOnStore)
        try container.encode(name, forKey: .name)
        try container.encode(reasons, forKey: .reasons)
    }
}
