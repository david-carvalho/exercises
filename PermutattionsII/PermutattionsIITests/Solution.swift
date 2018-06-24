
import Foundation

class Solution {
    func permuteUnique(_ nums: [Int]) -> [[Int]] {
        if nums.count == 1 {
            return [nums]
        }
        var resultSet = Set<NSArray>()
        var array = [Int]()
        for i in 0..<nums.count {
            array = nums
            array.remove(at: i)
            let perms = permuteUnique(array)
            for perm in perms {
                var mutablePerm = perm
                mutablePerm.insert(nums[i], at: 0)
                resultSet.insert(mutablePerm as NSArray)
            }
        }
        var resultArray = [[Int]]()
        for result in resultSet {
            resultArray.append(result as! Array<Int>)
        }
        return resultArray
    }
}
