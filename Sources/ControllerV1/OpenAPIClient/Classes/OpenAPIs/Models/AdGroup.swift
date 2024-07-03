//
// AdGroup.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AdGroup: Codable, JSONEncodable, Hashable {

    public enum BudgetType: String, Codable, CaseIterable {
        case dailyBudget = "DAILY_BUDGET"
        case totalBudgetInPeriod = "TOTAL_BUDGET_IN_PERIOD"
        case maxBudgetPerDay = "MAX_BUDGET_PER_DAY"
    }
    public var id: String
    public var title: String
    public var placement: Placement
    public var placementId: String
    public var maxBudgetPerDay: Double
    public var totalBudgetInPeriod: Double?
    public var budgetType: BudgetType
    public var usedBudget: Double
    public var activated: Bool
    public var products: [Product]
    public var banners: [Banner]
    public var startsAt: Date
    public var endsAt: Date?
    public var campaign: Campaign
    public var campaignId: String
    public var createdAt: Date
    public var updatedAt: Date
    public var deletedAt: Date?

    public init(id: String, title: String, placement: Placement, placementId: String, maxBudgetPerDay: Double, totalBudgetInPeriod: Double?, budgetType: BudgetType, usedBudget: Double, activated: Bool, products: [Product], banners: [Banner], startsAt: Date, endsAt: Date?, campaign: Campaign, campaignId: String, createdAt: Date, updatedAt: Date, deletedAt: Date?) {
        self.id = id
        self.title = title
        self.placement = placement
        self.placementId = placementId
        self.maxBudgetPerDay = maxBudgetPerDay
        self.totalBudgetInPeriod = totalBudgetInPeriod
        self.budgetType = budgetType
        self.usedBudget = usedBudget
        self.activated = activated
        self.products = products
        self.banners = banners
        self.startsAt = startsAt
        self.endsAt = endsAt
        self.campaign = campaign
        self.campaignId = campaignId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.deletedAt = deletedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case placement
        case placementId
        case maxBudgetPerDay
        case totalBudgetInPeriod
        case budgetType
        case usedBudget
        case activated
        case products
        case banners
        case startsAt
        case endsAt
        case campaign
        case campaignId
        case createdAt
        case updatedAt
        case deletedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(title, forKey: .title)
        try container.encode(placement, forKey: .placement)
        try container.encode(placementId, forKey: .placementId)
        try container.encode(maxBudgetPerDay, forKey: .maxBudgetPerDay)
        try container.encode(totalBudgetInPeriod, forKey: .totalBudgetInPeriod)
        try container.encode(budgetType, forKey: .budgetType)
        try container.encode(usedBudget, forKey: .usedBudget)
        try container.encode(activated, forKey: .activated)
        try container.encode(products, forKey: .products)
        try container.encode(banners, forKey: .banners)
        try container.encode(startsAt, forKey: .startsAt)
        try container.encode(endsAt, forKey: .endsAt)
        try container.encode(campaign, forKey: .campaign)
        try container.encode(campaignId, forKey: .campaignId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
        try container.encode(deletedAt, forKey: .deletedAt)
    }
}
