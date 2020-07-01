//
//  StringOrNumberTests.swift
//  FoundationExtensionsTests
//
//  Created by 张鹏 on 2019/12/28.
//  Copyright © 2019 dancewithpeng@gmail.com All rights reserved.
//

import XCTest
import FoundationExtensions


class StringOrNumberTests: XCTestCase {
    
    let jsonString = """
                     {"name": "张三",
                     "age": "100",
                     "height": 168.88,
                     "isMale": false}
                     """
    lazy var jsonData = jsonString.data(using: .utf8)!
    
    let jsonDecoder = JSONDecoder()
    let jsonEncoder = JSONEncoder()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    // 测试解码
    func testDecodable() {
        XCTAssertNoThrow(try jsonDecoder.decode(MyPerson.self, from: jsonData))
    }
    
    // 测试编码
    func testEncodable() {
        let person = MyPerson(name: "李四", age: 100, height: 188.88, isMale: false)
        XCTAssertNoThrow(try jsonEncoder.encode(person))
        let data = try! jsonEncoder.encode(person)
        let str = String(data: data, encoding: .utf8)
        XCTAssertNotNil(str)
        
        print(str!)
    }
    
    // 测试便捷方法
    func testConvenientUsing() {
        let person = try! jsonDecoder.decode(MyPerson.self, from: jsonData)
        XCTAssertEqual(person.age.intValue, 100)
        XCTAssertEqual(person.name.stringValue, "张三")
        XCTAssertEqual(person.height.floatValue, 168.88)
        XCTAssertEqual(person.height.doubleValue, 168.88)
        XCTAssertEqual(person.age.numberValue, 100)
    }
    
    // 测试Equatable
    func testEquatable() {
        let son1: StringOrNumber = .string("Hello World")
        let son2: StringOrNumber = .string("Hello World")
        let son3: StringOrNumber = .string("啊啦啦啦")
        let son4: StringOrNumber = .number(.int(100))
        let son5: StringOrNumber = .number(.double(100.00))
        let son6: StringOrNumber = .string("100")
        
        XCTAssertEqual(son1, son2)
        XCTAssertNotEqual(son2, son3)
        XCTAssertNotEqual(son3, son4)
        XCTAssertEqual(son4, son5)
        XCTAssertEqual(son5, son6)
    }
        
    // 测试字面量转化
    func testExpressibleLiteral() {
        let son1: StringOrNumber = 100
        let son2: StringOrNumber = "100"
        let son3: StringOrNumber = 100.00
        
        XCTAssertEqual(son2, son1)
        XCTAssertEqual(son1, son3)
        
        let n1: Number = 100
        let n2: Number = 100.00
        XCTAssertEqual(n1, n2)
        
        XCTAssertEqual(n1, 100)
        XCTAssertNotEqual(n2, 100.01)        
    }
    
    // 测试Comparable
    func testComparable() {
        let n1: Number = 100
        let n2: Number = 100.01
        
        XCTAssert(n1 < n2)
        XCTAssert(n1 < 101)
        XCTAssert(n1 > 99)
        XCTAssert(n1 >= 100)
    }
}

struct MyPerson: Decodable, Encodable {
    var name: StringOrNumber
    var age: StringOrNumber
    var height: StringOrNumber
    var isMale: Bool
}
