//
//  Article.swift
//  QiitaAPIManager
//
//  Created by 櫻井寛海 on 2018/06/27.
//  Copyright © 2018 Hiromi Sakurai. All rights reserved.
//

import Foundation

public struct Article: Decodable {
    public let renderedBody: String?
    public let body: String?
    public let coediting: Bool?
    public let commentsCount: Int?
    public let createdAt: String?
    public let group: Group?
    public let id: String?
    public let likesCount: Int?
    public let `private`: Bool?
    public let reactionsCount: Int?
    public let tags: [Tag]?
    public let title: String?
    public let updatedAt: String?
    public let url: String?
    public let user: User?
    public let pageViewCount: Int?

    enum CodingKeys: String, CodingKey {
        case renderedBody = "rendered_body"
        case body
        case coediting
        case commentsCount = "comments_count"
        case createdAt = "created_at"
        case group
        case id
        case likesCount = "likes_count"
        case `private`
        case reactionsCount = "reactions_count"
        case tags
        case title
        case updatedAt = "updated_at"
        case url
        case user
        case pageViewCount = "page_view_count"
    }
}
