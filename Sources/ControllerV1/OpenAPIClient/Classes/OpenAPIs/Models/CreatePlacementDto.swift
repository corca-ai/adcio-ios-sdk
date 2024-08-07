//
// CreatePlacementDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreatePlacementDto: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case grid = "GRID"
        case banner = "BANNER"
    }
    public enum SuggestionType: String, Codable, CaseIterable {
        case recommend = "RECOMMEND"
        case advertise = "ADVERTISE"
    }
    public enum BannerPlacementType: String, Codable, CaseIterable {
        case _static = "STATIC"
        case slide = "SLIDE"
    }
    public enum SupportEnvironment: String, Codable, CaseIterable {
        case web = "WEB"
        case webMobile = "WEB_MOBILE"
        case app = "APP"
    }
    public enum DevelopEnvironment: String, Codable, CaseIterable {
        case widget = "WIDGET"
        case selfDeveloped = "SELF_DEVELOPED"
        case codeInjector = "CODE_INJECTOR"
    }
    static let titleRule = StringRule(minLength: nil, maxLength: 255, pattern: nil)
    static let pageNameRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var title: String
    public var pageName: String
    public var type: ModelType
    public var suggestionType: SuggestionType
    public var bannerPlacementType: BannerPlacementType?
    public var supportEnvironment: SupportEnvironment
    public var developEnvironment: DevelopEnvironment
    public var displayFormatWidth: Double?
    public var displayFormatHeight: Double?
    public var placementFormatRatio: String?
    public var minDisplayCount: Double?
    public var maxDisplayCount: Double?
    public var displayCount: Double?
    public var injector: PlacementInjectorDto?
    public var displayPositions: [Double]?
    public var tableSize: [Double]?
    public var productDetailDataColumns: [String]?

    public init(title: String, pageName: String, type: ModelType, suggestionType: SuggestionType, bannerPlacementType: BannerPlacementType? = nil, supportEnvironment: SupportEnvironment, developEnvironment: DevelopEnvironment, displayFormatWidth: Double?, displayFormatHeight: Double?, placementFormatRatio: String?, minDisplayCount: Double? = nil, maxDisplayCount: Double? = nil, displayCount: Double? = nil, injector: PlacementInjectorDto? = nil, displayPositions: [Double]? = nil, tableSize: [Double]? = nil, productDetailDataColumns: [String]? = nil) {
        self.title = title
        self.pageName = pageName
        self.type = type
        self.suggestionType = suggestionType
        self.bannerPlacementType = bannerPlacementType
        self.supportEnvironment = supportEnvironment
        self.developEnvironment = developEnvironment
        self.displayFormatWidth = displayFormatWidth
        self.displayFormatHeight = displayFormatHeight
        self.placementFormatRatio = placementFormatRatio
        self.minDisplayCount = minDisplayCount
        self.maxDisplayCount = maxDisplayCount
        self.displayCount = displayCount
        self.injector = injector
        self.displayPositions = displayPositions
        self.tableSize = tableSize
        self.productDetailDataColumns = productDetailDataColumns
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case pageName
        case type
        case suggestionType
        case bannerPlacementType
        case supportEnvironment
        case developEnvironment
        case displayFormatWidth
        case displayFormatHeight
        case placementFormatRatio
        case minDisplayCount
        case maxDisplayCount
        case displayCount
        case injector
        case displayPositions
        case tableSize
        case productDetailDataColumns
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(title, forKey: .title)
        try container.encode(pageName, forKey: .pageName)
        try container.encode(type, forKey: .type)
        try container.encode(suggestionType, forKey: .suggestionType)
        try container.encodeIfPresent(bannerPlacementType, forKey: .bannerPlacementType)
        try container.encode(supportEnvironment, forKey: .supportEnvironment)
        try container.encode(developEnvironment, forKey: .developEnvironment)
        try container.encode(displayFormatWidth, forKey: .displayFormatWidth)
        try container.encode(displayFormatHeight, forKey: .displayFormatHeight)
        try container.encode(placementFormatRatio, forKey: .placementFormatRatio)
        try container.encodeIfPresent(minDisplayCount, forKey: .minDisplayCount)
        try container.encodeIfPresent(maxDisplayCount, forKey: .maxDisplayCount)
        try container.encodeIfPresent(displayCount, forKey: .displayCount)
        try container.encodeIfPresent(injector, forKey: .injector)
        try container.encodeIfPresent(displayPositions, forKey: .displayPositions)
        try container.encodeIfPresent(tableSize, forKey: .tableSize)
        try container.encodeIfPresent(productDetailDataColumns, forKey: .productDetailDataColumns)
    }
}

