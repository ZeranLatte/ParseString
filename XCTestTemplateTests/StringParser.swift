//
//  StringParser.swift
//  XCTestTemplateTests
//
//  Created by ZZZZeran on 12/30/17.
//  Copyright © 2017 LatteZW. All rights reserved.
//

import Foundation

class StringParser {
    
    
    
    func parse(line: Substring) -> [Substring] {
        
        return line.split(separator: ",", maxSplits: Int.max, omittingEmptySubsequences: false)
        
    }
    
    func parse(lines: String) -> [[Substring]] {
        return lines.split(whereSeparator: { char in
            switch char {
            case "\r", "\n", "\r\n": return true
            default: return false
            }
        }).map { line in
            parse(line: line)
        }

    }
}
