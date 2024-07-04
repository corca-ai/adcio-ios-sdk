//
// AdGroupWithSellerAndCampaign.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AdGroupWithSellerAndCampaign: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case grid = "GRID"
    }
    public enum BudgetType: String, Codable, CaseIterable {
        case dailyBudget = "DAILY_BUDGET"
        case totalBudgetInPeriod = "TOTAL_BUDGET_IN_PERIOD"
        case maxBudgetPerDay = "MAX_BUDGET_PER_DAY"
    }
    public var targets: [AdGroupTargetKeyValueResponse]
    public var seller: Client
    public var campaign: Campaign
    public var id: String
    public var title: String
    public var type: ModelType
    public var placementId: String
    public var maxBudgetPerDay: Double
    public var totalBudgetInPeriod: Double?
    public var budgetType: BudgetType
    public var dailyUsedBudget: Double
    public var totalUsedBudget: Double
    public var activated: Bool
    public var startsAt: Date
    public var endsAt: Date?
    public var sellerId: String
    public var campaignId: String
    public var createdAt: Date
    public var updatedAt: Date
    public var deletedAt: Date?

    public init(targets: [AdGroupTargetKeyValueResponse], seller: Client, campaign: Campaign, id: String, title: String, type: ModelType, placementId: String, maxBudgetPerDay: Double, totalBudgetInPeriod: Double?, budgetType: BudgetType, dailyUsedBudget: Double, totalUsedBudget: Double, activated: Bool, startsAt: Date, endsAt: Date?, sellerId: String, campaignId: String, createdAt: Date, updatedAt: Date, deletedAt: Date?) {
        self.targets = targets
        self.seller = seller
        self.campaign = campaign
        self.id = id
        self.title = title
        self.type = type
        self.placementId = placementId
        self.maxBudgetPerDay = maxBudgetPerDay
        self.totalBudgetInPeriod = totalBudgetInPeriod
        self.budgetType = budgetType
        self.dailyUsedBudget = dailyUsedBudget
        self.totalUsedBudget = totalUsedBudget
        self.activated = activated
        self.startsAt = startsAt
        self.endsAt = endsAt
        self.sellerId = sellerId
        self.campaignId = campaignId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.deletedAt = deletedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case targets
        case seller
        case campaign
        case id
        case title
        case type
        case placementId
        case maxBudgetPerDay
        case totalBudgetInPeriod
        case budgetType
        case dailyUsedBudget
        case totalUsedBudget
        case activated
        case startsAt
        case endsAt
        case sellerId
        case campaignId
        case createdAt
        case updatedAt
        case deletedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(targets, forKey: .targets)
        try container.encode(seller, forKey: .seller)
        try container.encode(campaign, forKey: .campaign)
        try container.encode(id, forKey: .id)
        try container.encode(title, forKey: .title)
        try container.encode(type, forKey: .type)
        try container.encode(placementId, forKey: .placementId)
        try container.encode(maxBudgetPerDay, forKey: .maxBudgetPerDay)
        try container.encode(totalBudgetInPeriod, forKey: .totalBudgetInPeriod)
        try container.encode(budgetType, forKey: .budgetType)
        try container.encode(dailyUsedBudget, forKey: .dailyUsedBudget)
        try container.encode(totalUsedBudget, forKey: .totalUsedBudget)
        try container.encode(activated, forKey: .activated)
        try container.encode(startsAt, forKey: .startsAt)
        try container.encode(endsAt, forKey: .endsAt)
        try container.encode(sellerId, forKey: .sellerId)
        try container.encode(campaignId, forKey: .campaignId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
        try container.encode(deletedAt, forKey: .deletedAt)
    }
}

