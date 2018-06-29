//
//  ItemDetailRequest.swift
//  QiitaAPIManager
//
//  Created by 櫻井寛海 on 2018/06/29.
//  Copyright © 2018 Hiromi Sakurai. All rights reserved.
//

import Foundation
import Moya

struct ItemDetailRequest: QiitaAPIRequestProtocol {

    typealias Response = Article

    var path: String { return "/items/" + itemId }

    var method: Moya.Method { return .get }

    var task: Task {
        return .requestPlain
    }

    private let itemId: String

    init(itemId: String) {
        self.itemId = itemId
    }
}
