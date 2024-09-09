//
// AdMetric.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AdMetric: Codable, JSONEncodable, Hashable {

    public var creditUsage: AmountMetric
    public var revenue: AmountMetric
    public var roas: FigureMetric
    public var impression: CountMetric
    public var click: CountAndFigureMetric
    public var purchase: CountAndFigureMetric
    public var average: AdMetricAverage

    public init(creditUsage: AmountMetric, revenue: AmountMetric, roas: FigureMetric, impression: CountMetric, click: CountAndFigureMetric, purchase: CountAndFigureMetric, average: AdMetricAverage) {
        self.creditUsage = creditUsage
        self.revenue = revenue
        self.roas = roas
        self.impression = impression
        self.click = click
        self.purchase = purchase
        self.average = average
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case creditUsage
        case revenue
        case roas
        case impression
        case click
        case purchase
        case average
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(creditUsage, forKey: .creditUsage)
        try container.encode(revenue, forKey: .revenue)
        try container.encode(roas, forKey: .roas)
        try container.encode(impression, forKey: .impression)
        try container.encode(click, forKey: .click)
        try container.encode(purchase, forKey: .purchase)
        try container.encode(average, forKey: .average)
    }
}

