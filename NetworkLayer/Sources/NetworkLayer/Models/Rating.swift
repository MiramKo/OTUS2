//
//  Rating.swift
//  
//
//  Created by Михаил Костров on 08.05.2023.
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Rating: Codable, JSONEncodable, Hashable {

    static let slugRule = StringRule(minLength: 1, maxLength: nil, pattern: "/^[-a-zA-Z0-9_]+$/")
    public var id: Int?
    public var title: String?
    public var count: Int?
    public var percent: Double?

    public init(id: Int? = nil, title: String?, count: Int?, percent: Double?) {
        self.id = id
        self.title = title
        self.count = count
        self.percent = percent
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case count
        case percent
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(percent, forKey: .percent)
    }
}


