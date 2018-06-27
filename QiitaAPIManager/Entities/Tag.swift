//
//  Tag.swift
//  QiitaAPIManager
//
//  Created by 櫻井寛海 on 2018/06/27.
//  Copyright © 2018 Hiromi Sakurai. All rights reserved.
//

import Foundation

public struct Tag: Decodable {
    public let name: String?
    public let versions: [String]?
}
