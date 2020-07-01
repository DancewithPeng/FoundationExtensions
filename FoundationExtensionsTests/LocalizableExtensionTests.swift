//
//  LocalizableExtensionTests.swift
//  FoundationExtensionsTests
//
//  Created by 张鹏 on 2019/8/8.
//  Copyright © 2019 dancewithpeng@gmail.com All rights reserved.
//

import XCTest

class LocalizableExtensionTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    /// 测试实例方法
    func testInstanceMethod() {
        XCTAssert(localized("hello").count > 0)
        XCTAssertNotEqual(localized("hello"), "hello")
        
        XCTAssert(localized("myhello", in: "MyTable").count > 0)
        XCTAssertNotEqual(localized("myhello", in: "MyTable"), "myhello")
    }
    
    /// 测试静态方法
    func testStaticMethod() {
        XCTAssert(LocalizableExtensionTests.localized("hello").count > 0)
        XCTAssertNotEqual(LocalizableExtensionTests.localized("hello"), "hello")
        
        print(LocalizableExtensionTests.localized("hello"))
        
        XCTAssert(LocalizableExtensionTests.localized("myhello", in: "MyTable").count > 0)
        XCTAssertNotEqual(LocalizableExtensionTests.localized("myhello", in: "MyTable"), "myhello")
        
        print(LocalizableExtensionTests.localized("myhello", in: "MyTable"))
    }
}
