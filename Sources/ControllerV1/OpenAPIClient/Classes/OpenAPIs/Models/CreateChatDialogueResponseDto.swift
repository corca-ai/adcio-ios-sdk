//
// CreateChatDialogueResponseDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreateChatDialogueResponseDto: Codable, JSONEncodable, Hashable {

    public enum Role: String, Codable, CaseIterable {
        case user = "user"
        case assistant = "assistant"
    }
    public enum ModelType: String, Codable, CaseIterable {
        case chat = "CHAT"
        case recommend = "RECOMMEND"
        case searchItemInfo = "SEARCH_ITEM_INFO"
        case explainHistory = "EXPLAIN_HISTORY"
        case error = "ERROR"
    }
    public var chatDialogueProducts: [ChatDialogueProduct]
    public var id: Double
    public var groupId: String
    public var role: Role
    public var type: ModelType
    public var content: String
    public var error: String?
    public var questions: [String]?
    public var key: String
    public var done: Bool
    public var createdAt: Date

    public init(chatDialogueProducts: [ChatDialogueProduct], id: Double, groupId: String, role: Role, type: ModelType, content: String, error: String?, questions: [String]?, key: String, done: Bool, createdAt: Date) {
        self.chatDialogueProducts = chatDialogueProducts
        self.id = id
        self.groupId = groupId
        self.role = role
        self.type = type
        self.content = content
        self.error = error
        self.questions = questions
        self.key = key
        self.done = done
        self.createdAt = createdAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case chatDialogueProducts
        case id
        case groupId
        case role
        case type
        case content
        case error
        case questions
        case key
        case done
        case createdAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(chatDialogueProducts, forKey: .chatDialogueProducts)
        try container.encode(id, forKey: .id)
        try container.encode(groupId, forKey: .groupId)
        try container.encode(role, forKey: .role)
        try container.encode(type, forKey: .type)
        try container.encode(content, forKey: .content)
        try container.encode(error, forKey: .error)
        try container.encode(questions, forKey: .questions)
        try container.encode(key, forKey: .key)
        try container.encode(done, forKey: .done)
        try container.encode(createdAt, forKey: .createdAt)
    }
}

