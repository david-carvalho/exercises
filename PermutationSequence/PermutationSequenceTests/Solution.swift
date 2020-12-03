
class Solution {
    
    func getPermutation(_ n: Int, _ k: Int) -> String {
        var numbers = [Int]()
        var factorial = 1
        for i in 1...n {
            numbers.append(i)
            factorial = factorial * i
        }
        var mutablek = k - 1
        var res = ""
        for i in stride(from: n, to: 0, by: -1) {
            let mod = factorial / i
            factorial = mod
            let index = mutablek / mod
            mutablek = mutablek % mod
            
            res.append(String(numbers[index]))
            numbers.remove(at: index)
        }
        return res
    }
}
