
class Solution {
    func nextPermutation(_ nums: inout [Int]) {
        
        var decreasing = true
        
        for i in 1..<nums.count {
            if nums[i - 1] < nums[i] {
                decreasing = false
            }
        }
        if decreasing {
            swap(&nums, start: 0)
            return
        }
        
        var decreasingIndex = 0
        for i in stride(from: nums.count - 1, to: 1, by: -1) {
            if nums[i] > nums[i - 1] {
                decreasingIndex = i - 1
                break
            }
        }
        var increasingNumberClosestToDecreasingNumberIndex = decreasingIndex + 1
        for i in increasingNumberClosestToDecreasingNumberIndex..<nums.count {
            let difference = nums[i] - nums[decreasingIndex]
            if difference > 0 {
                if nums[i] - nums[decreasingIndex] < nums[increasingNumberClosestToDecreasingNumberIndex] - nums[decreasingIndex] {
                    increasingNumberClosestToDecreasingNumberIndex = i
                }
            }
        }
        
        let decreasingValue = nums[increasingNumberClosestToDecreasingNumberIndex]
        nums[increasingNumberClosestToDecreasingNumberIndex] = nums[decreasingIndex]
        nums[decreasingIndex] = decreasingValue
        
        order(&nums, start: decreasingIndex + 1)
    }
    
    func order(_ nums: inout [Int], start: Int) {
        var mutableStart = start
        while mutableStart < nums.count - 1 {
            if nums[mutableStart] > nums[mutableStart + 1] {
                let temp = nums[mutableStart]
                nums[mutableStart] = nums[mutableStart + 1]
                nums[mutableStart + 1] = temp
                mutableStart = start
            } else {
                mutableStart += 1
            }
        }
    }
    
    func swap(_ nums: inout [Int], start: Int) {
        var mutableStart = start
        var end = nums.count - 1
        while mutableStart < end {
            let temp = nums[mutableStart]
            nums[mutableStart] = nums[end]
            nums[end] = temp
            mutableStart += 1
            end -= 1
        }
    }
}
