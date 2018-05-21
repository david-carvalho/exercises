//
//  ValidParenthesesTests.swift
//  ValidParenthesesTests
//
//  Created by David Carvalho on 01/04/2018.
//  Copyright © 2018 David Carvalho. All rights reserved.
//

import XCTest
@testable import ValidParentheses

class ValidParenthesesTests: XCTestCase {
   
    func testExample() {
        let solution = Solution()
        print(solution.isValid("[()[()]]"))
        print(solution.isValid("()"))
        print(solution.isValid("()[]{}"))
        print(solution.isValid("{}])"))
        print(solution.isValid("([)]"))
        print(solution.isValid("(]"))
        print(solution.isValid("([)]"))
    }
}
