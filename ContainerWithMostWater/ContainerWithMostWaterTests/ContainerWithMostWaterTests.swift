//
//  ContainerWithMostWaterTests.swift
//  ContainerWithMostWaterTests
//
//  Created by David Carvalho on 04/03/2018.
//  Copyright © 2018 David Carvalho. All rights reserved.
//

import XCTest
@testable import ContainerWithMostWater

class ContainerWithMostWaterTests: XCTestCase {
    
    func testExample() {
        let solution = Solution()
        print(solution.maxArea([2, 4, 6, 2, 6, 4, 1]))
        print(solution.maxArea([1, 1]))
    }
}
