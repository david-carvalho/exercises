
import XCTest
@testable import DataStructures

class StackTests: XCTestCase {
    
    func testGivenStack_AddOneElement_CountIsOne() {
        let stack = Stack<String>()
        stack.push("test")
        XCTAssert(stack.count() == 1)
    }
    
    func testGivenStackWithCapacityTwo_AddThreeElements_CountIsThree() {
        let stack = Stack<String>(capacity: 2)
        stack.push("test")
        stack.push("test")
        stack.push("test")
        XCTAssert(stack.count() == 3)
    }
    
    func testGivenStack_AddThreeElements_SecondElementIsCorrect() {
        let stack = Stack<String>()
        stack.push("test1")
        stack.push("test2")
        stack.push("test3")
        stack.pop()
        XCTAssertEqual(stack.pop(), "test2")
    }
    
    func testGivenStackWithCapacityTwo_AddThreeElements_ThirdElementCorrect() {
        let stack = Stack<String>(capacity: 2)
        stack.push("test1")
        stack.push("test2")
        stack.push("test3")
        XCTAssertEqual(stack.pop(), "test3")
    }
}

