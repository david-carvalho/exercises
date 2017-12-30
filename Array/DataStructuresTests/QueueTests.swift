
import XCTest
@testable import DataStructures

class QueueTests: XCTestCase {
    
    var runSpeedTests = false
    let numberElementsForSpeedRuns = [1_000,
                                      2_000,
                                      3_000,
                                      4_000,
                                      5_000]
    
    override func setUp() {
        super.setUp()
        runSpeedTests = false
    }
    
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
    
    func testAccess() {
        if runSpeedTests {
            for numberElements in numberElementsForSpeedRuns {
                runAccess(for: numberElements)
            }
        }
    }
    
    private func runAccess(for numberElements: Int) {
        // because queues don't have indexes, I don't feel there will be a huge difference between access and search, so I didn't speed test search in this case.
        let queue = createAndFillQueue(for: numberElements)
        var totalTime: Double = 0
        
        for _ in 0..<numberElements {
            let tempQueue = Queue<String>()
            let startDate = Date()
            
            for counter in stride(from: numberElements - 1,
                                  through: 0,
                                  by: -1) {
                                    let object = queue.remove()
                                    if object != String(counter) {
                                        tempQueue.add(object)
                                    }
            }
            
            repeat {
                queue.add(tempQueue.remove())
            } while(tempQueue.count() > 0)
            
            
            totalTime += Date().timeIntervalSince(startDate)
        }
        
        printResult(for: numberElements, totalTime: totalTime)
    }
    
    private func createAndFillQueue(for numberElements: Int) -> Queue<String> {
        let queue = Queue<String>()
        for counter in 0...numberElements {
            queue.add(String(counter))
        }
        return queue
    }
    
    func testInsertion() {
        if runSpeedTests {
            for numberElements in numberElementsForSpeedRuns {
                runInsertion(for: numberElements)
            }
        }
    }
    
    private func runInsertion(for numberElements: Int) {
        
        run(operation: { (object, queue) in
            queue.add(object)
        }, for: numberElements)
    }
    
    func testDeletion() {
        if runSpeedTests {
            for numberElements in numberElementsForSpeedRuns {
                runDeletion(for: numberElements)
            }
        }
    }
    
    private func runDeletion(for numberElements: Int) {
        
        run(operation: { (object, queue) in
            queue.remove()
        }, for: numberElements)
    }
    
    func run(operation: (String, Queue<String>) -> Void,
             for numberElements: Int) {
        var totalTime: Double = 0
        
        for _ in 0..<numberElements {
            let queue = createAndFillQueue(for: numberElements)
            let startDate = Date()
            
            operation("test object", queue)
            
            totalTime += Date().timeIntervalSince(startDate)
        }
        
        printResult(for: numberElements, totalTime: totalTime)
    }
    
    func printResult(for numberElements: Int, totalTime: Double) {
        print("For \(numberElements) it took \(totalTime / Double(numberElements)) s")
    }
}


