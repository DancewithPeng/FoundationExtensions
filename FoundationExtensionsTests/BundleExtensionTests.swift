//
//  BundleExtensionTests.swift
//  DateExtensionTests
//
//  Created by 张鹏 on 2019/8/8.
//  Copyright © 2019 dancewithpeng@gmail.com All rights reserved.
//

import XCTest

class BundleExtensionTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    /// 测试实例属性
    func testInstanceBundleProvider() {
        XCTAssertEqual(currentBundle.bundleIdentifier, "DP.iOS.Component.FoundationExtensionsTests")
    }
    
    /// 测试静态属性
    func testStaticBundleProvider() {
        XCTAssertEqual(DateExtensionTests.currentBundle.bundleIdentifier, "DP.iOS.Component.FoundationExtensionsTests")
    }

    /// 测试其他类
    func testOtherClass() {
        XCTAssertEqual(UIButton().currentBundle.bundleIdentifier, "com.apple.UIKitCore")
        XCTAssertEqual(UIButton.currentBundle.bundleIdentifier, "com.apple.UIKitCore")
    }
    
    /// 测试图片加载
    func testImageLoad() {
        XCTAssertNotNil(currentBundle.image(named: "关闭-中灰"))
        print(currentBundle.image(named: "关闭-中灰")!)
    }
    
    /// 测试本地化字符串加载
    func testLocalizableStringLoad() {
        XCTAssert(currentBundle.localizedString(forKey: "hello").count > 0)
        XCTAssertNotEqual(currentBundle.localizedString(forKey: "hello"), "hello")
        
        XCTAssert(currentBundle.localizedString(forKey: "myhello", table: "MyTable").count > 0)
        XCTAssertNotEqual(currentBundle.localizedString(forKey: "myhello", table: "MyTable"), "myhello")
    }
}
