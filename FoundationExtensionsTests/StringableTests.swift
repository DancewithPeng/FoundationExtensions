
//
//  StringableTests.swift
//  FoundationExtensionsTests
//
//  Created by 张鹏 on 2019/9/18.
//  Copyright © 2019 dancewithpeng@gmail.com All rights reserved.
//

import XCTest
import FoundationExtensions

class StringableTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testString() {
        print("\n\("🐶🐶🐶".string)\n")
    }
    
    func testStruct() {
        let p = Person()
        print("\n\(p.string)\n")
    }
    
    func testClass() {
        let s = Student()
        print("\n\(s.string)\n")
    }
    
    func testInt() {
        let i = 100
        print("\n\(i.string)\n")
    }
}

struct Person: Stringable {
    var string: String = "啦啦啦啦"
}

class Student: Stringable {
    var string: String = "class 啊啦啦啦"
}

extension Int: Stringable {}
