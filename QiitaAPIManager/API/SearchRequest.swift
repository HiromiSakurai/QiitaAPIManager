//
//  SearchRequest.swift
//  QiitaAPIManager
//
//  Created by 櫻井寛海 on 2018/06/29.
//  Copyright © 2018 Hiromi Sakurai. All rights reserved.
//

import Foundation
import Moya

struct SearchRequest: QiitaAPIRequestProtocol {

    typealias Response = [Article]

    var path: String { return "/items" }

    var method: Moya.Method { return .get }

    var task: Task {
        return .requestParameters(parameters: ["page": page,
                                               "per_page": 20,
                                               "query": searchQuery],
                                  encoding: URLEncoding.default)
    }

    private let searchQuery: String
    private let page: Int

    init(searchQuery: String, page: Int) {
        self.searchQuery = searchQuery
        self.page = page
    }
}
