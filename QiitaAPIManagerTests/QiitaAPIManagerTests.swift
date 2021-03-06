//
//  QiitaAPIManagerTests.swift
//  QiitaAPIManagerTests
//
//  Created by 櫻井寛海 on 2018/06/25.
//  Copyright © 2018 Hiromi Sakurai. All rights reserved.
//

import XCTest
@testable import QiitaAPIManager
import RxSwift
import Moya
import RxMoya

class QiitaAPIManagerTests: XCTestCase {

    var provider: APIRequestProvider!

    var qiitaClient: QiitaClient!

    let disposeBag = DisposeBag()
    override func setUp() {
        super.setUp()
        provider = APIRequestProvider.shared
        qiitaClient = QiitaClient()
    }
    
    override func tearDown() {
        provider = nil
        qiitaClient = nil
        super.tearDown()
    }

    func testSearchRequest() {
        let exp = expectation(description: "get search req response")
        provider.request(generateSearchRequest())
            .subscribe(onSuccess: { response in
                exp.fulfill()
            }, onError: { error in
                exp.fulfill()
                XCTAssert(false, error.localizedDescription)
            })
            .disposed(by: disposeBag)
        waitForExpectations(timeout: 5.0, handler: nil)
    }

    func testItemDetailRequest() {
        let exp = expectation(description: "get item detail req response")
        provider.request(generateItemDetailRequest())
            .subscribe(onSuccess: { response in
                exp.fulfill()
            }, onError: { error in
                exp.fulfill()
                XCTAssert(false, error.localizedDescription)
            })
            .disposed(by: disposeBag)
        waitForExpectations(timeout: 5.0, handler: nil)
    }

    func testFetchArticles() {
        let exp = expectation(description: "fetch articles")
        qiitaClient.fetchArticles(searchQuery: "swift", page: 1)
            .subscribe(onSuccess: { _ in
                exp.fulfill()
            }, onError: { error in
                exp.fulfill()
                XCTAssert(false, error.localizedDescription)
            })
            .disposed(by: disposeBag)
        waitForExpectations(timeout: 5.0, handler: nil)
    }

    func testGetArticle() {
        let exp = expectation(description: "get article")
        qiitaClient.getArticle(with: "3437fe7143b2ab31d2a5")
            .subscribe(onSuccess: { _ in
                exp.fulfill()
            }, onError: { error in
                exp.fulfill()
                XCTAssert(false, error.localizedDescription)
            })
            .disposed(by: disposeBag)
        waitForExpectations(timeout: 5.0, handler: nil)
    }

    private func generateSearchRequest() -> SearchRequest {
        return SearchRequest(searchQuery: "swift", page: 1)
    }

    private func generateItemDetailRequest() -> ItemDetailRequest {
        return ItemDetailRequest(itemId: "3437fe7143b2ab31d2a5")
    }
}
