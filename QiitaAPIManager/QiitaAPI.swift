//
//  QiitaAPI.swift
//  QiitaAPIManager
//
//  Created by 櫻井寛海 on 2018/06/25.
//  Copyright © 2018 Hiromi Sakurai. All rights reserved.
//

import Moya

enum QiitaAPI {
    case search(String, Int)
}

extension QiitaAPI: TargetType {

    var baseURL: URL {
        // swiftlint:disable:next force_unwrapping
        return URL(string: "https://qiita.com/api/v2")!
    }

    var path: String {
        switch self {
        case .search:
            return "/items"
        }
    }

    var method: Moya.Method {
        switch self {
        case .search:
            return .get
        }
    }

    var sampleData: Data {
        return Data()
    }

    var task: Task {
        switch self {
        case .search(let query, let page):
            return .requestParameters(parameters: ["page": page, "per_page": 20, "query": query], encoding: URLEncoding.default)
        }
    }

    var headers: [String: String]? {
        return nil
    }
}
