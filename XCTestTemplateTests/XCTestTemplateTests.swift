//
//  XCTestTemplateTests.swift
//  XCTestTemplateTests
//
//  Created by ZZZZeran on 12/27/17.
//  Copyright © 2017 LatteZW. All rights reserved.
//

import XCTest

class XCTestTemplateTests: XCTestCase {
    
    let parser = StringParser()

    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
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
    
    func testLine() {
        let line = "one,2,three" as Substring
        XCTAssertEqual(parser.parse(line: line), ["one", "2", "three"])
    }
    
    func testLines() {
        let line = "one,2,,three\nfour,five"
        XCTAssertEqual(parser.parse(lines: line), [["one", "2", "", "three"], ["four","five"]])
    }
    
    func testLinesWithCRLF() {
        let line = "one,2,,three\r\nfour,five"
        XCTAssertEqual(parser.parse(lines: line), [["one", "2", "", "three"], ["four","five"]])
    }
    
    func testLineWithQuotes() {
        let line = "one,\"quote\",2,,three" as Substring
        XCTAssertEqual(parser.parse(line: line), ["one", "quote", "2", "", "three"])
    }
}
