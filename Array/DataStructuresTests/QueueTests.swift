
import XCTest
@testable import DataStructures

class QueueTests: XCTestCase {
    
    func testGivenQueue_AddOneElement_CountIsOne() {
        let queue = Queue<String>()
        queue.add("test")
        XCTAssert(queue.count() == 1)
    }
    
    func testGivenQueueWithCapacityTwo_AddThreeElements_CountIsThree() {
        let queue = Queue<String>(capacity: 2)
        queue.add("test")
        queue.add("test")
        queue.add("test")
        XCTAssert(queue.count() == 3)
    }
    
    func testGivenQueue_AddThreeElements_SecondElementIsCorrect() {
        let queue = Queue<String>()
        queue.add("test1")
        queue.add("test2")
        queue.add("test3")
        queue.remove()
        XCTAssertEqual(queue.remove(), "test2")
    }
    
    func testGivenQueueWithCapacityTwo_AddThreeElements_ThirdElementCorrect() {
        let queue = Queue<String>(capacity: 2)
        queue.add("test1")
        queue.add("test2")
        queue.add("test3")
        XCTAssertEqual(queue.remove(), "test3")
    }
}
