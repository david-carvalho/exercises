//
//  Solution.swift
//  TwoSumTests
//
//  Created by David Carvalho on 14/01/2018.
//  Copyright © 2018 David Carvalho. All rights reserved.
//

import UIKit

//class Solution: NSObject {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var dictionary = [Int : Int]()
        for index in 0..<nums.count {
            dictionary[nums[index]] = index
        }
        
        for i in 0..<nums.count {
            let valToCheck = target - nums[i]
            if let indexValToCheck = dictionary[valToCheck] {
                if i != indexValToCheck {
                    return [i, indexValToCheck]
                }
            }
        }
        return []
    }
//}

//
