
class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        if nums.count == 0 {
            return 0
        }
        var i = 0, j = 0
        while true {
            if nums[j] == val {
//                j += 1
            } else {
                if i != j {
                    nums[i] = nums [j]
                }
                i += 1
            }
            j += 1
            
            if j >= nums.count {
                break
            }
        }
        return i
    }
}
