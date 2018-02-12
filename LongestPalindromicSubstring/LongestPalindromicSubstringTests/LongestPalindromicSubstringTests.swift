
import XCTest
@testable import LongestPalindromicSubstring

class LongestPalindromicSubstringTests: XCTestCase {
    
    func testExample() {
        let solution = Solution()
        print(solution.longestPalindrome("banana"))
        print(solution.longestPalindrome("banana123"))
        print(solution.longestPalindrome("123anna123"))
        print(solution.longestPalindrome("a"))
        print(solution.longestPalindrome("bb"))
        print(solution.longestPalindrome("babad"))
        
    }
    
}
