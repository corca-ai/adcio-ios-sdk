//
// WidgetValue.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct WidgetValue: Codable, JSONEncodable, Hashable {

    public var id: String
    public var widget: Widget
    public var widgetId: String
    public var values: AnyCodable

    public init(id: String, widget: Widget, widgetId: String, values: AnyCodable) {
        self.id = id
        self.widget = widget
        self.widgetId = widgetId
        self.values = values
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case widget
        case widgetId
        case values
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(widget, forKey: .widget)
        try container.encode(widgetId, forKey: .widgetId)
        try container.encode(values, forKey: .values)
    }
}
