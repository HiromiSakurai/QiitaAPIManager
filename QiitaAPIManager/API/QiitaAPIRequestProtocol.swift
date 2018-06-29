//
//  QiitaAPIRequestProtocol.swift
//  QiitaAPIManager
//
//  Created by 櫻井寛海 on 2018/06/29.
//  Copyright © 2018 Hiromi Sakurai. All rights reserved.
//

import Foundation
import Moya

protocol QiitaAPIRequestProtocol: TargetType {
    associatedtype Response: Decodable
}

extension QiitaAPIRequestProtocol {
    var baseURL: URL {
        // swiftlint:disable:next force_unwrapping
        return URL(string: "https://qiita.com/api/v2")!
    }

    var sampleData: Data {
        return Data()
    }

    var headers: [String: String]? {
        return ["Content-Type": "application/json"]
    }

}
