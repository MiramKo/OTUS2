//
// Reddit.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Reddit: Codable, JSONEncodable, Hashable {

    static let nameRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let textRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let imageRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let urlRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let usernameRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let usernameUrlRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var id: Int?
    public var name: String?
    public var text: String?
    public var image: String?
    public var url: String?
    public var username: String?
    public var usernameUrl: String?
    public var created: Date?

    public init(id: Int? = nil, name: String? = nil, text: String? = nil, image: String? = nil, url: String? = nil, username: String? = nil, usernameUrl: String? = nil, created: Date? = nil) {
        self.id = id
        self.name = name
        self.text = text
        self.image = image
        self.url = url
        self.username = username
        self.usernameUrl = usernameUrl
        self.created = created
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case text
        case image
        case url
        case username
        case usernameUrl = "username_url"
        case created
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(image, forKey: .image)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(username, forKey: .username)
        try container.encodeIfPresent(usernameUrl, forKey: .usernameUrl)
        try container.encodeIfPresent(created, forKey: .created)
    }
}

