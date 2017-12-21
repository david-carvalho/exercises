
import XCTest
@testable import DataStructures

class StackTests: XCTestCase {
    
    var runSpeedTests = false
    let numberElementsForSpeedRuns = [3_000,
                                      6_000,
                                      9_000,
                                      12_000]
    
    override func setUp() {
        super.setUp()
        runSpeedTests = true
    }
    
    func testGivenStack_AddOneElement_CountIsOne() {
        let stack = Stack<String>()
        stack.push(object: "test")
        XCTAssert(stack.count == 1)
    }
    
    func testGivenStackWithCapacityTwo_AddThreeElements_CountIsThree() {
        let stack = Stack<String>(capacity: 2)
        stack.push(object: "test")
        stack.push(object: "test")
        stack.push(object: "test")
        XCTAssert(stack.count == 3)
    }
    
    func testGivenStack_AddThreeElements_SecondElementIsCorrect() {
        let stack = Stack<String>()
        stack.push(object: "test1")
        stack.push(object: "test2")
        stack.push(object: "test3")
        stack.pop()
        XCTAssertEqual(stack.pop(), "test2")
    }
    
    func testGivenStackWithCapacityTwo_AddThreeElements_ThirdElementCorrect() {
        let stack = Stack<String>(capacity: 2)
        stack.push(object: "test1")
        stack.push(object: "test2")
        stack.push(object: "test3")
        XCTAssertEqual(stack.pop(), "test3")
    }
    
    func testAccess() {
        if runSpeedTests {
            for numberElements in numberElementsForSpeedRuns {
                runAccess(for: numberElements)
            }
        }
    }
    
    private func runAccess(for numberElements: Int) {
        let stack = createAndFillStack(for: numberElements)
        var totalTime: Double = 0
        
        for counter in 0..<numberElements {
            let tempStack = Stack<String>()
            let startDate = Date()
            
            for counter in stride(from: numberElements - 1,
                                  through: 0,
                                  by: -1) {
                                    let object = stack.pop()
                                    if object != String(counter) {
                                        tempStack.push(object: object)
                                    }
            }
            
            repeat {
                stack.push(object: tempStack.pop())
            } while(tempStack.count > 0)
            
            
            totalTime += Date().timeIntervalSince(startDate)
        }
        
        printResult(for: numberElements, totalTime: totalTime)
    }
    
//    func testSearch() {
//        if runSpeedTests {
//            for numberElements in numberElementsForSpeedRuns {
//                runSearch(for: numberElements)
//            }
//        }
//    }
//
//    private func runSearch(for numberElements: Int) {
//        let array = createAndFillStack(for: numberElements)
//
//        countTime(for: numberElements, array: array) { (array, currentElement, index) in
//            _ = array.contains(currentElement)
//        }
//    }
//
//    private func countTime(for numberElements: Int,
//                           stack: DataStructures.Array<String>,
//                           operation: ((DataStructures.Array<String>, String, Int) -> Void)) {
//        var totalTime: Double = 0
//
//        for counter in 0..<numberElements {
//            let startDate = Date()
//            operation(stack, stack[counter], counter)
//
//            totalTime += Date().timeIntervalSince(startDate)
//        }
//
//        printResult(for: numberElements, totalTime: totalTime)
//    }
//
    private func createAndFillStack(for numberElements: Int) -> Stack<String> {
        let stack = Stack<String>()
        for counter in 0...numberElements {
            stack.push(object: String(counter))
        }
        return stack
    }
//
//    func testInsertion() {
//        if runSpeedTests {
//            for numberElements in numberElementsForSpeedRuns {
//                runInsertion(for: numberElements)
//            }
//        }
//    }
//
//    private func runInsertion(for numberElements: Int) {
//
//        var totalTime: Double = 0
//
//        for counter in 0..<numberElements {
//            let arrayToAdd = createAndFillArray(for: numberElements)
//            let startDate = Date()
//
//            arrayToAdd.insert("test object",
//                              at: counter)
//
//            totalTime += Date().timeIntervalSince(startDate)
//        }
//
//        printResult(for: numberElements, totalTime: totalTime)
//    }
//
//    func testDeletion() {
//        if runSpeedTests {
//            for numberElements in numberElementsForSpeedRuns {
//                runDeletion(for: numberElements)
//            }
//        }
//    }
//
//    private func runDeletion(for numberElements: Int) {
//
//        var totalTime: Double = 0
//
//        for counter in 0..<numberElements {
//            let arrayToRemove = createAndFillArray(for: numberElements)
//            let startDate = Date()
//
//            arrayToRemove.removeObject(at: counter)
//
//            totalTime += Date().timeIntervalSince(startDate)
//        }
//
//        printResult(for: numberElements, totalTime: totalTime)
//    }
    
    func printResult(for numberElements: Int, totalTime: Double) {
        print("For \(numberElements) it took \(totalTime / Double(numberElements)) s")
    }
}

