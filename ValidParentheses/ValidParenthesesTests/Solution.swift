import Foundation
class Solution {

    func isValid(_ s: String) -> Bool {
        let string: NSString = NSString(string: s)
        var stackParentheses = [unichar]()
        
        for i in 0..<s.count {
            let currentChar = string.character(at: i)
            if isOpening(c: currentChar) {
                stackParentheses.append(currentChar)
            } else if isClosing(c: currentChar) {
                if stackParentheses.count > 0 && areOpposingOperations(c1: stackParentheses.last!, c2: currentChar) {
                    stackParentheses.removeLast()
                } else {
                    return false
                }
            }
        }
        return stackParentheses.count == 0
    }
    
    private func isOpening(c: unichar) -> Bool {
        return
            c == 91 ||
                c == 40 ||
                c == 123
    }
    
    private func isClosing(c: unichar) -> Bool {
        return
            c == 93 ||
                c == 41 ||
                c == 125
    }
    
    private func areOpposingOperations(c1: unichar, c2: unichar) -> Bool {
        return
        (c1 == 91 && c2 == 93) ||
        (c1 == 40 && c2 == 41) ||
        (c1 == 123 && c2 == 125)
    }
}
