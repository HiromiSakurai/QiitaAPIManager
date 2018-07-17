//
//  Tag.swift
//  QiitaAPIManager
//
//  Created by 櫻井寛海 on 2018/06/27.
//  Copyright © 2018 Hiromi Sakurai. All rights reserved.
//

import Foundation

// swiftlint:disable:next type_name
public struct Tag: Decodable {
    public let name: String?
    public let versions: [String]?

    public init(name: String?, versions: [String]?) {
        self.name = name
        self.versions = versions
    }
}
