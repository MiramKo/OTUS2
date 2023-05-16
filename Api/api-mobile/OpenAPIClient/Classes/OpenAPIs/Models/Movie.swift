//
// Movie.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Movie: Codable, JSONEncodable, Hashable {

    static let nameRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var id: Int?
    public var name: String?
    public var preview: String?
    public var data: AnyCodable?

    public init(id: Int? = nil, name: String? = nil, preview: String? = nil, data: AnyCodable? = nil) {
        self.id = id
        self.name = name
        self.preview = preview
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case preview
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(preview, forKey: .preview)
        try container.encodeIfPresent(data, forKey: .data)
    }
}

