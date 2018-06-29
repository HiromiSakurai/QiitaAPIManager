//
//  APIRequestProvider.swift
//  QiitaAPIManager
//
//  Created by 櫻井寛海 on 2018/06/29.
//  Copyright © 2018 Hiromi Sakurai. All rights reserved.
//

import Foundation
import RxSwift
import Moya
import RxMoya

class APIRequestProvider {

    private init() { }

    static let shared: APIRequestProvider = APIRequestProvider()

    private let provider: MoyaProvider = MoyaProvider<MultiTarget>()

    func request<R>(_ request: R) -> Single<R.Response> where R: QiitaAPIRequestProtocol {
        let target = MultiTarget(request)
        return provider.rx.request(target)
            .filterSuccessfulStatusCodes()
            .debug("QiitaAPIManager request", trimOutput: false)
            .map(R.Response.self)
    }
}
