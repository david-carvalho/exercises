
import XCTest
@testable import ImplementstrStr

class ImplementstrStrTests: XCTestCase {
    func testExample() {
        let solution = Solution()
        print(solution.strStr("hello", "ll"))
        print(solution.strStr("aaaaa", "bba"))
        print(solution.strStr("", "a"))
        print(solution.strStr("", ""))
    }
}
