import Foundation

class Solution {
    func extraLongFactorials(n: Int) -> Void {
        var fact = NSString(string: "1")
        for i in 1...n {
            fact = multiply(fact, i)
        }
        print(fact)
    }
    
    func multiply(_ number1: NSString, _ number2: Int) -> NSString {
        var parts = [String]()
        var counter = 1
        var num = number2
        while num > 0 {
            
            let multiplier = num % 10
            num = num / 10
            var multiplicationPartResult = String()
            if counter > 1 {
                for _ in 1...counter - 1 {
                    multiplicationPartResult.append("0")
                }
            }
            
            var remain = 0
            for index in stride(from: number1.length - 1, to: -1, by: -1) {
                let mul = (Int(number1.character(at: index)) - 48) * multiplier + remain
                let mulPart = mul % 10
                remain = mul / 10
                multiplicationPartResult = String(mulPart) + multiplicationPartResult
                
            }
            if remain > 0 {
                multiplicationPartResult = String(remain) + multiplicationPartResult
            }
            parts.append(multiplicationPartResult)
            
            counter += 1
        }
        var res = "0" as NSString
        for number in parts {
            res = gradeSchoolAdd(res, with: number as NSString)
        }
        return res
    }
    
    func gradeSchoolAdd(_ number1: NSString, with number2: NSString) -> NSString {
        var goOver = 0
        var i = number1.length - 1, j = number2.length - 1
        var addResult = NSString(string: "")
        while (i > -1 || j > -1) {
            let intNumber1 = (i > -1 ? Int(number1.character(at: i)) - 48 : 0)
            let intNumber2 = (j > -1 ? Int(number2.character(at: j)) - 48 : 0)
            var add = intNumber1 + intNumber2 + goOver
            if add > 9 {
                goOver = add / 10
                add = add % 10
            } else {
                goOver = 0
            }
            addResult = NSString(string: "\(add)\(addResult)")
            i -= 1
            j -= 1
        }
        if goOver > 0 {
            addResult = NSString(string: "\(goOver)\(addResult)")
        }
        return addResult
    }

}
