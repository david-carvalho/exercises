//
//  ReverseIntegerTests.swift
//  ReverseIntegerTests
//
//  Created by David Carvalho on 19/02/2018.
//  Copyright © 2018 David Carvalho. All rights reserved.
//

import XCTest
@testable import ReverseInteger

class ReverseIntegerTests: XCTestCase {

    func testExample() {
        let solution = Solution()
        print(solution.reverse(123))
        print(solution.reverse(120))
        print(solution.reverse(-123))
        print(solution.reverse(-1))
        print(solution.reverse(1))
        print(solution.reverse(1534236469))
        print(solution.reverse(-2147483412))
        
        
    }
    
}
