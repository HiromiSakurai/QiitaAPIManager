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
    public let id: Int?
    public let likesCount: Int?
    public let `private`: Bool?
    public let reactionsCount: Int?
    public let tags: [Tag]?
    public let title: String?
    public let updatedAt: String?
    public let url: String?
    public let user: User?
    public let pageViewCount: Int?
}
