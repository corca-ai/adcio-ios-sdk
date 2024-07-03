//
// WidgetInjector.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct WidgetInjector: Codable, JSONEncodable, Hashable {

    public var path: String
    public var wrapper: String
    public var template: String?
    public var imageTemplate: String?
    public var videoTemplate: String?
    public var swiper: AnyCodable?

    public init(path: String, wrapper: String, template: String? = nil, imageTemplate: String? = nil, videoTemplate: String? = nil, swiper: AnyCodable? = nil) {
        self.path = path
        self.wrapper = wrapper
        self.template = template
        self.imageTemplate = imageTemplate
        self.videoTemplate = videoTemplate
        self.swiper = swiper
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case path
        case wrapper
        case template
        case imageTemplate
        case videoTemplate
        case swiper
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(path, forKey: .path)
        try container.encode(wrapper, forKey: .wrapper)
        try container.encodeIfPresent(template, forKey: .template)
        try container.encodeIfPresent(imageTemplate, forKey: .imageTemplate)
        try container.encodeIfPresent(videoTemplate, forKey: .videoTemplate)
        try container.encodeIfPresent(swiper, forKey: .swiper)
    }
}
