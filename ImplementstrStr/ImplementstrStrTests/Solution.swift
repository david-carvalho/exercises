import Foundation

class Solution {

    func strStr(_ haystack: String, _ needle: String) -> Int {
        let nsHaystack = NSString(string: haystack)
        let nsNeedle = NSString(string: needle)
        
        var i = 0, j = 0
        
        if needle.count == 0 {
            return 0
        }
        
        if haystack.count == 0 {
            return -1
        }
        
        while true {
            if nsHaystack.character(at: j) == nsNeedle.character(at: j - i) {
                j += 1
            } else {
                i += 1
                j = i
            }
            
            if j - i == nsNeedle.length {
                return i
            }
            
            if j >= nsHaystack.length {
                break
            }
        }
        return -1
    }

}
