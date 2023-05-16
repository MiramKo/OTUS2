//
// Youtube.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Youtube: Codable, JSONEncodable, Hashable {

    static let externalIdRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let channelIdRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let channelTitleRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let nameRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let descriptionRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var id: Int?
    public var externalId: String?
    public var channelId: String?
    public var channelTitle: String?
    public var name: String?
    public var description: String?
    public var created: Date?
    public var viewCount: Int?
    public var commentsCount: Int?
    public var likeCount: Int?
    public var dislikeCount: Int?
    public var favoriteCount: Int?
    public var thumbnails: AnyCodable?

    public init(id: Int? = nil, externalId: String? = nil, channelId: String? = nil, channelTitle: String? = nil, name: String? = nil, description: String? = nil, created: Date? = nil, viewCount: Int? = nil, commentsCount: Int? = nil, likeCount: Int? = nil, dislikeCount: Int? = nil, favoriteCount: Int? = nil, thumbnails: AnyCodable? = nil) {
        self.id = id
        self.externalId = externalId
        self.channelId = channelId
        self.channelTitle = channelTitle
        self.name = name
        self.description = description
        self.created = created
        self.viewCount = viewCount
        self.commentsCount = commentsCount
        self.likeCount = likeCount
        self.dislikeCount = dislikeCount
        self.favoriteCount = favoriteCount
        self.thumbnails = thumbnails
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case externalId = "external_id"
        case channelId = "channel_id"
        case channelTitle = "channel_title"
        case name
        case description
        case created
        case viewCount = "view_count"
        case commentsCount = "comments_count"
        case likeCount = "like_count"
        case dislikeCount = "dislike_count"
        case favoriteCount = "favorite_count"
        case thumbnails
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(externalId, forKey: .externalId)
        try container.encodeIfPresent(channelId, forKey: .channelId)
        try container.encodeIfPresent(channelTitle, forKey: .channelTitle)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(created, forKey: .created)
        try container.encodeIfPresent(viewCount, forKey: .viewCount)
        try container.encodeIfPresent(commentsCount, forKey: .commentsCount)
        try container.encodeIfPresent(likeCount, forKey: .likeCount)
        try container.encodeIfPresent(dislikeCount, forKey: .dislikeCount)
        try container.encodeIfPresent(favoriteCount, forKey: .favoriteCount)
        try container.encodeIfPresent(thumbnails, forKey: .thumbnails)
    }
}

