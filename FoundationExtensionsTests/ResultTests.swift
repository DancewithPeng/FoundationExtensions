//
//  ResultTests.swift
//  FoundationExtensionsTests
//
//  Created by 张鹏 on 2020/1/15.
//  Copyright © 2020 dancewithpeng@gmail.com All rights reserved.
//

import XCTest
import FoundationExtensions


class ResultTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPickResult() {
        let ret: PickResult<String> = .pick("Hello")
        switch ret {
        case let .pick(value):
            XCTAssertEqual(value, "Hello")
        case .cancel:
            XCTAssertTrue(true)
        }
    }
    
    func testConfirmationResult() {
        let ret: ConfirmationResult = .confirmation
        switch ret {
        case .confirmation:
            XCTAssertTrue(true)
        case .cancel:
            XCTAssertTrue(true)
        }
    }
    
    func testOperationResult() {
        let ret: OperationResult<String, Error> = .success("啦啦啦")
        switch ret {
        case let .success(value):
            XCTAssertEqual(value, "啦啦啦")
        case .failure:
            XCTAssertTrue(true)
        case .cancel:
            XCTAssertTrue(true)
        }
    }
}
