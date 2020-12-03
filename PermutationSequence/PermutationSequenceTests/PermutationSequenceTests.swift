//
//  PermutationSequenceTests.swift
//  PermutationSequenceTests
//
//  Created by David Carvalho on 01/07/2018.
//  Copyright © 2018 David Carvalho. All rights reserved.
//

import XCTest
@testable import PermutationSequence

class PermutationSequenceTests: XCTestCase {
    
    func testExample() {
        let solution = Solution()
        print(solution.getPermutation(3, 3))
//        print(solution.getPermutation(4, 9))
        print(solution.getPermutation(9, 24))
//        print(solution.getPermutation(9, 206490))
    }
}
