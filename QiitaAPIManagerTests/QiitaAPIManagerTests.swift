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

    let disposeBag = DisposeBag()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testFetchData() {
        let aaa = Api()
        let exp = expectation(description: "get API response")
        aaa.apitest()
            .subscribe(onSuccess: { res in
                print(res)
                exp.fulfill()
            }, onError: { error in
                exp.fulfill()
                XCTAssert(false, error.localizedDescription)
            })
            .disposed(by: disposeBag)
        waitForExpectations(timeout: 5.0, handler: nil)
    }
}
