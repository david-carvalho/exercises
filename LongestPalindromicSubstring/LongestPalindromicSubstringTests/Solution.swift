import Foundation

class Solution {
    func longestPalindrome(_ s: String) -> String {

        let string: NSString = NSString(string: s)
        var start = 0, end = 0;
        for i in 0..<s.count {
            let len1 = expandAroundCenter(string, left: i, right: i);
            let len2 = expandAroundCenter(string, left: i, right: i + 1);
            let len = max(len1, len2);
            
            if (len > end - start) {
                start = i - (len - 1) / 2;
                end = i + len / 2;
            }
        }
        let startIndex = s.index(s.startIndex, offsetBy: start)
        let endIndex = s.index(s.startIndex, offsetBy: end + 1)
        let range = startIndex..<endIndex
        return String(s[range]);
    }
    
    private func expandAroundCenter(_ s: NSString, left: Int, right: Int) -> Int {
        
        var L = left, R = right;

        while L >= 0 && R < s.length && s.character(at: L) == s.character(at: R) {
            L -= 1
            R += 1
        }
        
        return R - L - 1
    }
}
