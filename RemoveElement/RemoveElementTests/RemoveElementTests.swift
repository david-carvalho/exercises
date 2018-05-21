//
//  RemoveElementTests.swift
//  RemoveElementTests
//
//  Created by David Carvalho on 15/04/2018.
//  Copyright © 2018 David Carvalho. All rights reserved.
//

import XCTest
@testable import RemoveElement

class RemoveElementTests: XCTestCase {
  
    func testExample() {
        let solution = Solution()
        var array = [Int]()
        
        array = [3, 2, 2, 3]
        print(solution.removeElement(&array, 3))
        print(array)
        
        array = [0, 1, 2, 2, 3, 0, 4, 2]
        print(solution.removeElement(&array, 2))
        print(array)
        
        array = []
        print(solution.removeElement(&array, 0))
        print(array)
    }
}
