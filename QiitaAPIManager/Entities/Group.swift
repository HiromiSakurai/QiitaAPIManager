//
//  Group.swift
//  QiitaAPIManager
//
//  Created by 櫻井寛海 on 2018/06/27.
//  Copyright © 2018 Hiromi Sakurai. All rights reserved.
//

import Foundation

public struct Group: Decodable {
    public let createdAt: String?
    public let id: Int?
    public let name: String?
    public let `private`: Bool?
    public let updatedAt: String?
    public let urlName: String?

    enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case id
        case name
        case `private`
        case updatedAt = "updated_at"
        case urlName = "url_name"
    }
}
