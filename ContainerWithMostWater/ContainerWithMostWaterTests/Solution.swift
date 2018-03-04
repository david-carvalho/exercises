//
//  Solution.swift
//  ContainerWithMostWaterTests
//
//  Created by David Carvalho on 04/03/2018.
//  Copyright © 2018 David Carvalho. All rights reserved.
//

import UIKit

class Solution: NSObject {
    func maxArea(_ height: [Int]) -> Int {
        var maxArea = 0
        var i = 0, j = height.count - 1
        while i < j {
            let xDistance = j - i
            let minHeight = min(height[i], height[j])
            let newArea = minHeight * xDistance
            if maxArea < newArea {
                maxArea = newArea
            }
            if height[i] < height[j] {
                i += 1
            } else {
                j -= 1
            }
        }
        return maxArea
    }
}
