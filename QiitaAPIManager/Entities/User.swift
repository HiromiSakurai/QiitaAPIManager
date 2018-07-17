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
    public let permanentId: Int?
    public let profileImageUrl: String?
    public let twitterScreenName: String?
    public let websiteUrl: String?

    private enum CodingKeys: String, CodingKey {
        case description
        case facebookId = "facebook_id"
        case followeesCount = "followees_count"
        case followersCount = "followers_count"
        case githubLoginName = "github_login_name"
        case id
        case itemsCount = "items_count"
        case linkedinId = "linkedin_id"
        case location
        case name
        case organization
        case permanentId = "permanent_id"
        case profileImageUrl = "profile_image_url"
        case twitterScreenName = "twitter_screen_name"
        case websiteUrl = "website_url"
    }

    public init(description: String?,
                facebookId: String?,
                followeesCount: Int?,
                followersCount: Int?,
                githubLoginName: String?,
                id: String?,
                itemsCount: Int?,
                linkedinId: String?,
                location: String?,
                name: String?,
                organization: String?,
                permanentId: Int?,
                profileImageUrl: String?,
                twitterScreenName: String?,
                websiteUrl: String?) {
        self.description = description
        self.facebookId = facebookId
        self.followeesCount = followeesCount
        self.followersCount = followersCount
        self.githubLoginName = githubLoginName
        self.id = id
        self.itemsCount = itemsCount
        self.linkedinId = linkedinId
        self.location = location
        self.name = name
        self.organization = organization
        self.permanentId = permanentId
        self.profileImageUrl = profileImageUrl
        self.twitterScreenName = twitterScreenName
        self.websiteUrl = websiteUrl
    }
}
