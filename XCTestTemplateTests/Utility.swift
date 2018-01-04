//
//  Utility.swift
//  XCTestTemplateTests
//
//  Created by ZZZZeran on 12/30/17.
//  Copyright © 2017 LatteZW. All rights reserved.
//

import Foundation
import XCTest


// global func otherwise won't compile

// compare mutildimissional array [[]]
func ==<E: Equatable>(lhs: [[E]], rhs: [[E]]) -> Bool {
    guard lhs.count == rhs.count else {
        return false
    }
    
    for (lhsArray, rhsArray) in zip(lhs, rhs) {
        guard lhsArray == rhsArray else {
            return false
        }
    }
    return true
}


//public func XCTAssert(_ expression: @autoclosure () throws -> Bool, _ message: @autoclosure () -> String = default, file: StaticString = #file, line: UInt = #line) {}


func XCTAssertEqual<T>(_ lhs: [[T]], _ rhs: [[T]], file: StaticString = #file, line: UInt = #line) where T : Equatable {
    XCTAssert(lhs == rhs, "Expected \(lhs) and \(rhs) to be equal.", file: file, line: line)
}
