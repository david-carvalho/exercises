
import XCTest
@testable import DataStructures

class QueueTests: XCTestCase {
    
    let numberElementsForSpeedRuns = [1_000,
                                      2_000,
                                      3_000,
                                      4_000,
                                      5_000]
    
    func testAccess() {
        for numberElements in numberElementsForSpeedRuns {
            runAccess(for: numberElements)
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
        for numberElements in numberElementsForSpeedRuns {
            runInsertion(for: numberElements)
        }
    }
    
    private func runInsertion(for numberElements: Int) {
        
        run(operation: { (object, queue) in
            queue.add(object)
        }, for: numberElements)
    }
    
    func testDeletion() {
        for numberElements in numberElementsForSpeedRuns {
            runDeletion(for: numberElements)
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



