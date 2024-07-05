//
// CampaignWithClientAndAudience.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CampaignWithClientAndAudience: Codable, JSONEncodable, Hashable {

    public enum BudgetType: String, Codable, CaseIterable {
        case dailyBudget = "DAILY_BUDGET"
        case totalBudgetInPeriod = "TOTAL_BUDGET_IN_PERIOD"
        case maxBudgetPerDay = "MAX_BUDGET_PER_DAY"
    }
    public var client: Client
    public var audience: Audience
    public var id: String
    public var title: String
    public var placementId: String
    public var maxBudgetPerDay: Double
    public var totalBudgetInPeriod: Double?
    public var budgetType: BudgetType
    public var usedBudget: Double
    public var activated: Bool
    public var startsAt: Date
    public var endsAt: Date?
    public var clientId: String
    public var clickLookbackWindowDays: Double
    public var impressionLookbackWindowDays: Double?
    public var createdAt: Date
    public var updatedAt: Date
    public var deletedAt: Date?

    public init(client: Client, audience: Audience, id: String, title: String, placementId: String, maxBudgetPerDay: Double, totalBudgetInPeriod: Double?, budgetType: BudgetType, usedBudget: Double, activated: Bool, startsAt: Date, endsAt: Date?, clientId: String, clickLookbackWindowDays: Double, impressionLookbackWindowDays: Double?, createdAt: Date, updatedAt: Date, deletedAt: Date?) {
        self.client = client
        self.audience = audience
        self.id = id
        self.title = title
        self.placementId = placementId
        self.maxBudgetPerDay = maxBudgetPerDay
        self.totalBudgetInPeriod = totalBudgetInPeriod
        self.budgetType = budgetType
        self.usedBudget = usedBudget
        self.activated = activated
        self.startsAt = startsAt
        self.endsAt = endsAt
        self.clientId = clientId
        self.clickLookbackWindowDays = clickLookbackWindowDays
        self.impressionLookbackWindowDays = impressionLookbackWindowDays
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.deletedAt = deletedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case client
        case audience
        case id
        case title
        case placementId
        case maxBudgetPerDay
        case totalBudgetInPeriod
        case budgetType
        case usedBudget
        case activated
        case startsAt
        case endsAt
        case clientId
        case clickLookbackWindowDays
        case impressionLookbackWindowDays
        case createdAt
        case updatedAt
        case deletedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(client, forKey: .client)
        try container.encode(audience, forKey: .audience)
        try container.encode(id, forKey: .id)
        try container.encode(title, forKey: .title)
        try container.encode(placementId, forKey: .placementId)
        try container.encode(maxBudgetPerDay, forKey: .maxBudgetPerDay)
        try container.encode(totalBudgetInPeriod, forKey: .totalBudgetInPeriod)
        try container.encode(budgetType, forKey: .budgetType)
        try container.encode(usedBudget, forKey: .usedBudget)
        try container.encode(activated, forKey: .activated)
        try container.encode(startsAt, forKey: .startsAt)
        try container.encode(endsAt, forKey: .endsAt)
        try container.encode(clientId, forKey: .clientId)
        try container.encode(clickLookbackWindowDays, forKey: .clickLookbackWindowDays)
        try container.encode(impressionLookbackWindowDays, forKey: .impressionLookbackWindowDays)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
        try container.encode(deletedAt, forKey: .deletedAt)
    }
}

