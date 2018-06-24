
class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        if nums.count == 1 {
            return [nums]
        }
        var result = [[Int]]()
        var array = [Int]()
        for i in 0..<nums.count {
            array = nums
            array.remove(at: i)
            let perms = permute(array)
            for perm in perms {
                var mutablePerm = perm
                mutablePerm.insert(nums[i], at: 0)
                result.append(mutablePerm)
            }
        }
        return result
    }
}
