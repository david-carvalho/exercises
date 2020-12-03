//
//  FormingAMagicSquareTests.swift
//  FormingAMagicSquareTests
//
//  Created by David Carvalho on 30/06/2018.
//  Copyright © 2018 David Carvalho. All rights reserved.
//

import XCTest
@testable import FormingAMagicSquare

class FormingAMagicSquareTests: XCTestCase {
    
    func testExample() {
        let solution = Solution()
        print(solution.formingMagicSquare(s: [[5, 3, 4],
                                              [1, 5, 8],
                                              [6, 4, 2]]))

        print(solution.formingMagicSquare(s: [[4, 9, 2],
                                              [3, 5, 7],
                                              [8, 1, 5]]))

        print(solution.formingMagicSquare(s: [[4, 5, 8],
                                              [2, 4, 1],
                                              [1, 9, 7]]))
        
        print(solution.formingMagicSquare(s: [[6, 1, 2],
                                              [7, 2, 6],
                                              [5, 6, 2]]))
    }
}
