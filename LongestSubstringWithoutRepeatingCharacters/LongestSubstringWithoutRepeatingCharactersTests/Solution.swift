
import UIKit

class Solution: NSObject {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        let set = NSMutableSet()

        var i = 0, j = 0
        var maxSize = 0
        let totalChars = s.count
        
        while (i < totalChars && j < totalChars) {
            var jindex = s.index(s.startIndex, offsetBy: j)
            
            if !set.contains(s[jindex]) {
                set.add(s[jindex])
                j += 1
                maxSize = max(maxSize, j - i)
            } else {
                let iindex = s.index(s.startIndex, offsetBy: i)
                set.remove(s[iindex])
                i += 1
            }
        }
        return maxSize
    }
    
    
}
