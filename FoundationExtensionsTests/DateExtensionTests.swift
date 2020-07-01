//
//  DateExtensionTests.swift
//  DateExtensionTests
//
//  Created by 李泽群 on 2019/4/24.
//  Copyright © 2019 dancewithpeng@gmail.com All rights reserved.
//

import XCTest
import FoundationExtensions

class DateExtensionTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    // 把时间字符串转换成Date
    func testDateStringToDate() {
        let dateString = "2019-04-24 19:19:00 UTC"
        let date = dateString.date(format: "yyyy-MM-dd HH:mm:ss zzz")
        // 输出结果为2019-04-25 19:19:00就是正确的，会有时区问题因为有时区问题，所以加了UTC
        print("把时间字符串转换成Date - \(String(describing: date))")
    }
    
    // 把Date实例转成指定格式字符串
    func testDateToDateString() {
        let date = Date()
        let dateString = date.string(format: "yyyy-MM-dd HH:mm:ss")
        // 输出结果只要是当前时间就是正确的
        print("把Date实例转成指定格式字符串 - \(dateString)")
        
    }
    
    func testFilePath() {
        print("-- \(FilePath.documentDirectory)")
        print("-- \(FilePath.libraryDirectory)")
        print("-- \(FilePath.homeDirectory)")
        print("-- \(FilePath.tempDirectory)")
        
        print("-- \(FilePath.documentDirectory.fileURL)")
        print("-- \(FilePath.libraryDirectory.fileURL)")
        print("-- \(FilePath.homeDirectory.fileURL)")
        print("-- \(FilePath.tempDirectory.fileURL)")
    }
    
    func testRandomString() {
        print(">> \(String.random(length: 5))")
        print(">> \(String.random(length: 5, isLetter: true))")
        print(">> \(String.random(length: 100))")
        print(">> \(String.random(length: 100, isLetter: true))")
        print(">> \(String.random(length: -1))")
        print(">> \(String.random(length: -1, isLetter: true))")
    }
    
    func testRandomStringPerformance() {
        self.measure {
            print(">> \(String.random(length: 10000))")
        }
    }
}
