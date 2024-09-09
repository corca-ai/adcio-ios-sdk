//
// Metric.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Metric: Codable, JSONEncodable, Hashable {

    public var totalVisitor: CountCost?
    public var impressedVisitor: CountCost?
    public var purchase: CountCostAmount
    public var click: CountCost
    public var impression: CountCost?
    public var addToCart: CountCost?
    public var figure: Figure?
    public var credit: Credit?
    public var count: Count?
    public var revenue: Revenue?

    public init(totalVisitor: CountCost? = nil, impressedVisitor: CountCost? = nil, purchase: CountCostAmount, click: CountCost, impression: CountCost? = nil, addToCart: CountCost? = nil, figure: Figure? = nil, credit: Credit? = nil, count: Count? = nil, revenue: Revenue? = nil) {
        self.totalVisitor = totalVisitor
        self.impressedVisitor = impressedVisitor
        self.purchase = purchase
        self.click = click
        self.impression = impression
        self.addToCart = addToCart
        self.figure = figure
        self.credit = credit
        self.count = count
        self.revenue = revenue
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case totalVisitor
        case impressedVisitor
        case purchase
        case click
        case impression
        case addToCart
        case figure
        case credit
        case count
        case revenue
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(totalVisitor, forKey: .totalVisitor)
        try container.encodeIfPresent(impressedVisitor, forKey: .impressedVisitor)
        try container.encode(purchase, forKey: .purchase)
        try container.encode(click, forKey: .click)
        try container.encodeIfPresent(impression, forKey: .impression)
        try container.encodeIfPresent(addToCart, forKey: .addToCart)
        try container.encodeIfPresent(figure, forKey: .figure)
        try container.encodeIfPresent(credit, forKey: .credit)
        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(revenue, forKey: .revenue)
    }
}

