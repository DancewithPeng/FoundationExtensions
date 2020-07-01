//
//  NSNumberizable.swift
//  FoundationExtensionsTests
//
//  Created by 张鹏 on 2019/9/18.
//  Copyright © 2019 dancewithpeng@gmail.com All rights reserved.
//

import XCTest
import FoundationExtensions

class NSNumberizableTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testNumber() {
        let number = NSNumber(value: 100)
        XCTAssertEqual(number, number.number)
    }
    
    func testInt() {
        let i = 100
        XCTAssertEqual(NSNumber(value: i), i.number)
    }
}

extension Int: NSNumberizable {
    public var number: NSNumber {
        return NSNumber(value: self)
    }
}
