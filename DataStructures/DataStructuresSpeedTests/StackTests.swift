
import XCTest
@testable import DataStructures

class StackTests: XCTestCase {
    
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
        // because stacks don't have indexes, I don't feel there will be a huge difference between access and search, so I didn't speed test search in this case.
        let stack = createAndFillStack(for: numberElements)
        var totalTime: Double = 0
        
        for _ in 0..<numberElements {
            let tempStack = Stack<String>()
            let startDate = Date()
            
            for counter in stride(from: numberElements - 1,
                                  through: 0,
                                  by: -1) {
                                    let object = stack.pop()
                                    if object != String(counter) {
                                        tempStack.push(object)
                                    }
            }
            
            repeat {
                stack.push(tempStack.pop())
            } while(tempStack.count() > 0)
            
            
            totalTime += Date().timeIntervalSince(startDate)
        }
        
        printResult(for: numberElements, totalTime: totalTime)
    }
    
    private func createAndFillStack(for numberElements: Int) -> Stack<String> {
        let stack = Stack<String>()
        for counter in 0...numberElements {
            stack.push(String(counter))
        }
        return stack
    }
    
    func testInsertion() {
        for numberElements in numberElementsForSpeedRuns {
            runInsertion(for: numberElements)
        }
    }
    
    private func runInsertion(for numberElements: Int) {
        
        run(operation: { (object, stack) in
            stack.push(object)
        }, for: numberElements)
    }
    
    func testDeletion() {
        for numberElements in numberElementsForSpeedRuns {
            runDeletion(for: numberElements)
        }
    }
    
    private func runDeletion(for numberElements: Int) {
        
        run(operation: { (object, stack) in
            stack.pop()
        }, for: numberElements)
    }
    
    func run(operation: (String, Stack<String>) -> Void,
             for numberElements: Int) {
        var totalTime: Double = 0
        
        for _ in 0..<numberElements {
            let stack = createAndFillStack(for: numberElements)
            let startDate = Date()
            
            operation("test object", stack)
            
            totalTime += Date().timeIntervalSince(startDate)
            
            stack.pop()
        }
        
        printResult(for: numberElements, totalTime: totalTime)
    }
    
    func printResult(for numberElements: Int, totalTime: Double) {
        print("For \(numberElements) it took \(totalTime / Double(numberElements)) s")
    }
}


