//
// FetchAdGroupReviewDetailResponseDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct FetchAdGroupReviewDetailResponseDto: Codable, JSONEncodable, Hashable {

    public enum Status: String, Codable, CaseIterable {
        case pending = "PENDING"
        case approved = "APPROVED"
        case rejected = "REJECTED"
    }
    /** status가 \"PENDING\"인 경우 requestedAt 으로, status가 \"APPROVED\" 또는 \"REJECTED\"인 경우 processedAt 으로 간주됩니다. */
    public var createdAt: Date
    public var sourcePendingReview: AdGroupReview?
    public var id: String
    public var adGroupId: String
    public var status: Status
    public var comment: String?
    public var sourcePendingReviewId: String?

    public init(createdAt: Date, sourcePendingReview: AdGroupReview? = nil, id: String, adGroupId: String, status: Status, comment: String?, sourcePendingReviewId: String?) {
        self.createdAt = createdAt
        self.sourcePendingReview = sourcePendingReview
        self.id = id
        self.adGroupId = adGroupId
        self.status = status
        self.comment = comment
        self.sourcePendingReviewId = sourcePendingReviewId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case createdAt
        case sourcePendingReview
        case id
        case adGroupId
        case status
        case comment
        case sourcePendingReviewId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(sourcePendingReview, forKey: .sourcePendingReview)
        try container.encode(id, forKey: .id)
        try container.encode(adGroupId, forKey: .adGroupId)
        try container.encode(status, forKey: .status)
        try container.encode(comment, forKey: .comment)
        try container.encode(sourcePendingReviewId, forKey: .sourcePendingReviewId)
    }
}

