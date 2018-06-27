//
//  User.swift
//  QiitaAPIManager
//
//  Created by 櫻井寛海 on 2018/06/27.
//  Copyright © 2018 Hiromi Sakurai. All rights reserved.
//

import Foundation

public struct User: Decodable {
    public let description: String?
    public let facebookId: String?
    public let followeesCount: Int?
    public let followersCount: Int?
    public let githubLoginName: String?
    public let id: String?
    public let itemsCount: Int?
    public let linkedinId: String?
    public let location: String?
    public let name: String?
    public let organization: String?
    public let permanentId: String?
    public let profileImageUrl: String?
    public let twitterScreenName: String?
    public let websiteUrl: String?
}
