//
//  Solution.swift
//  ClimbingtheLeaderboardTests
//
//  Created by David Carvalho on 30/06/2018.
//  Copyright © 2018 David Carvalho. All rights reserved.
//

import UIKit

class Solution: NSObject {
    func climbingLeaderboard(scores: [Int], alice: [Int]) -> [Int] {
        var result = [Int]()
        if scores.count == 0 {
            return [1]
        }
        
        let set = NSMutableOrderedSet()
        for number in scores {
            set.insert(number, at: set.count)
        }

        let nonRepeatingScores = set.array as! [Int]
        
        for alicePoints in alice {
            
            if alicePoints >= nonRepeatingScores.first ?? 0 {
                result.append(1)
                continue
            }
            
            if alicePoints < nonRepeatingScores.last ?? 0 {
                result.append(nonRepeatingScores.count + 1)
                continue
            }
            
            var start = 0
            var end = nonRepeatingScores.count - 1
            
            var alicePosition = nonRepeatingScores.count / 2// (end - start) / 2
            
            while nonRepeatingScores[alicePosition] != alicePoints {
                if nonRepeatingScores[alicePosition] > alicePoints {
                    start = alicePosition
                } else if nonRepeatingScores[alicePosition] < alicePoints {
                    end = alicePosition
                }
                alicePosition = start + (end - start) / 2
                
                if end - start == 1 {
                    alicePosition = end
                    break
                }
                
            }
            
            result.append(alicePosition + 1)
        }
        return result
    }
}
