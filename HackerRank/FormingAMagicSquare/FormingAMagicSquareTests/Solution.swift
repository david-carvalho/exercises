//
//  Solution.swift
//  FormingAMagicSquareTests
//
//  Created by David Carvalho on 30/06/2018.
//  Copyright © 2018 David Carvalho. All rights reserved.
//

import Foundation

class Solution: NSObject {
    func createPossibleMagicSquares(_ n: Int) -> [[[Int]]] {
        return [
            [[8, 1, 6], [3, 5, 7], [4, 9, 2]],
            [[6, 1, 8], [7, 5, 3], [2, 9, 4]],
            [[4, 9, 2], [3, 5, 7], [8, 1, 6]],
            [[2, 9, 4], [7, 5, 3], [6, 1, 8]],
            [[8, 3, 4], [1, 5, 9], [6, 7, 2]],
            [[4, 3, 8], [9, 5, 1], [2, 7, 6]],
            [[6, 7, 2], [1, 5, 9], [8, 3, 4]],
            [[2, 7, 6], [9, 5, 1], [4, 3, 8]]]
        
    }
    
    func computeDifferenceBetween(square square1: [[Int]], and square2: [[Int]]) -> Int {
        var difference = 0
        for x in 0...2 {
            for y in 0...2 {
                difference += abs(square1[x][y] - square2[x][y])
            }
        }
        return difference
    }
    
    // Complete the formingMagicSquare function below.
    func formingMagicSquare(s: [[Int]]) -> Int {
        let possibleMagicSquares = createPossibleMagicSquares(3)
        var minDifference = Int(INT_MAX)
        for possibleMagicSquare in possibleMagicSquares {
            let difference = computeDifferenceBetween(square: possibleMagicSquare, and: s)
//            print(difference)
            if difference < minDifference {
                minDifference = difference
            }
        }
        return minDifference
    }
}
