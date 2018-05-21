
import UIKit

class Solution {

    func countAndSay(_ n: Int) -> String {
        var number: NSString = "1"
        var newNumber: NSString = ""
        var iterCount = 0
        while (iterCount < n - 1) {
            var charCount = 0
            var strCount = 0
            var currentChar: unichar = 1
            while (strCount < number.length) {
                if charCount == 0 {
                    currentChar = number.character(at: strCount)
                    charCount += 1
                    strCount += 1
                } else {
                    if number.character(at: strCount) != currentChar {
                        newNumber = NSString(string: "\(newNumber)\(charCount)\(Character(UnicodeScalar(currentChar)!))")
                        charCount = 0
                    } else {
                        charCount += 1
                        strCount += 1
                    }
                }
            }
            if charCount > 0 {
                newNumber = NSString(string: "\(newNumber)\(charCount)\(Character(UnicodeScalar(currentChar)!))")
            }
            iterCount += 1
            number = newNumber
            newNumber = ""
        }
        
        return number as String
    }
}
