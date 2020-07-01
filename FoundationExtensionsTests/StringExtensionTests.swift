//
//  StringExtensionTests.swift
//  FoundationExtensionsTests
//
//  Created by 张鹏 on 2019/8/12.
//  Copyright © 2019 dancewithpeng@gmail.com All rights reserved.
//

import XCTest


class StringExtensionTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testRandom() {
        let randomString = String.random(length: 32)
        XCTAssertEqual(randomString.count, 32)
        print(randomString)
        
        let randomString2 = String.random(length: 16)
        XCTAssertEqual(randomString2.count, 16)
        print(randomString2)
        
        let randomString3 = String.random(length: 128)
        XCTAssertEqual(randomString3.count, 128)
        print(randomString3)
    }
    
    func testRandomWithinLetter() {
        
        let randomString = String.random(length: 32, isLetter: true)
        XCTAssertEqual(randomString.count, 32)
        print(randomString)
        
        let randomString2 = String.random(length: 16, isLetter: true)
        XCTAssertEqual(randomString2.count, 16)
        print(randomString2)
        
        let randomString3 = String.random(length: 128, isLetter: true)
        XCTAssertEqual(randomString3.count, 128)
        print(randomString3)
    }
}
