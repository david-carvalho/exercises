//
//  Solution.swift
//  ReverseIntegerTests
//
//  Created by David Carvalho on 19/02/2018.
//  Copyright © 2018 David Carvalho. All rights reserved.
//

class Solution {
    func reverse(_ x: Int) -> Int {
        var number = x
        if number > Int(Int32.max) || number < Int(Int32.min) {
            return 0
        }
        
        let isNegative = number < 0
        if isNegative {
            number = -number
        }
        
        var numberStr = "0"
        
        while number > 0 {
            numberStr.append(String(number % 10))
            number = number / 10
        }
        
        
        
        if isNegative {
            numberStr = "-\(numberStr)"
        }
        number = Int(numberStr)!
        if number > Int(Int32.max) || number < Int(Int32.min) {
            return 0
        }
        return number
    }
}
