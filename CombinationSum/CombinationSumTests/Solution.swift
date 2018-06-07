
class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        let numbers = candidates.sorted { (n1, n2) -> Bool in
            return n2 < n1
        }
        var counter = -1
        var result = [[Int]]()
        counter += 1
        let number = numbers.first!
        
        //            if number > target {
        //                return combine(array: Array(numbers[1...(numbers.count - 1)]), target: target, appending: result)
        //            }
        
        if number == target {
            result.append([number])
            if numbers.count > 1 {
                let newArray = Array(numbers[1...(numbers.count - 1)])
                result = combine(array: newArray, target: target, appending: result)
            }
        } else if target % number == 0 {
            var tempResult = [Int]()
            for _ in 0..<(target / number) {
                tempResult.append(number)
            }
            result.append(tempResult)
        }
        
        if number < target && numbers.count > 1 {
            let newArray = Array(numbers[1...(numbers.count - 1)])
            let tempResults = combinationSum(newArray, target - number)
            for tempResult in tempResults {
                result.append(tempResult + [numbers.first!])
            }
            
            result = combine(array: newArray, target: target, appending: result)
        }
        
        return result
    }
    
    private func combine(array: [Int], target: Int, appending: [[Int]]) -> [[Int]] {
        let tempResult = combinationSum(array, target)
        return appending + tempResult
    }
}
