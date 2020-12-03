//
//  NextPermutationTests.swift
//  NextPermutationTests
//
//  Created by David Carvalho on 05/07/2018.
//  Copyright © 2018 David Carvalho. All rights reserved.
//

import XCTest
@testable import NextPermutation

class NextPermutationTests: XCTestCase {
    
    func testExample() {
        let solution = Solution()
        let tests = [
            ([1, 2, 3], [1, 3, 2]),
                     ([2, 3, 1], [3, 1, 2])
            ,
                     ([3, 2, 1], [1, 2, 3]),
                     ([1, 1, 5], [1, 5, 1]),
                     ([2, 3, 1, 3, 3], [2, 3, 3, 1, 3]),
                      ([3, 4, 1, 4, 3, 3], [3, 4, 3, 1, 3, 4]),
                      ([2, 2, 4, 0, 1, 2, 4, 4, 0], [2, 2, 4, 0, 1, 4, 0, 2, 4])
        ]
        for test in tests {
            var testCase = test.0
            solution.nextPermutation(&testCase)
            print(testCase)
            print(test.1)
            print("----------------")
        }
        
    }
}
