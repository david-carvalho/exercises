
import XCTest
@testable import DataStructures

class SingleLinkedListTests: XCTestCase {
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
        runOperation(for: numberElements) { (list, index) in
            _ = list[index]
        }
    }
    
    private func runOperation(for numberElements: Int, operation: (SingleLinkedList<String>, Int) -> Void) {
        let list = createAndFillLinkedList(for: numberElements)
        var totalTime: Double = 0
        
        for counter in 0..<numberElements {
            let startDate = Date()
            
            operation(list, counter)
            
            totalTime += Date().timeIntervalSince(startDate)
        }
        
        printResult(for: numberElements, totalTime: totalTime)
    }
    
    func testSearch() {
        for numberElements in numberElementsForSpeedRuns {
            runSearch(for: numberElements)
        }
    }
    
    private func runSearch(for numberElements: Int) {
        runOperation(for: numberElements) { (list, index) in
            list.contains(String(index))
        }
    }
    
    func testInsert() {
        for numberElements in numberElementsForSpeedRuns {
            let list = createAndFillLinkedList(for: numberElements)
            var totalTime: Double = 0
            
            for counter in 0..<numberElements {
                let object = String(counter)
                let nodeToAddRemoveAfter = list[counter]
                
                let startDate = Date()
                list.add(object: object, after: nodeToAddRemoveAfter)
                
                totalTime += Date().timeIntervalSince(startDate)
                
                list.remove(after: nodeToAddRemoveAfter)
            }
            
            printResult(for: numberElements, totalTime: totalTime)
        }
    }
    
    func testRemove() {
        for numberElements in numberElementsForSpeedRuns {
            let list = createAndFillLinkedList(for: numberElements)
            var totalTime: Double = 0
            
            for counter in 0..<numberElements {
                let object = String(counter)
                let nodeToAddRemoveAfter = list[counter]
                
                let startDate = Date()
                list.remove(after: nodeToAddRemoveAfter)
                totalTime += Date().timeIntervalSince(startDate)
                list.add(object: object, after: nodeToAddRemoveAfter)
                
            }
            
            printResult(for: numberElements, totalTime: totalTime)
        }
    }
    
    func printResult(for numberElements: Int, totalTime: Double) {
        print("For \(numberElements) it took \(totalTime / Double(numberElements)) s")
    }
    
    private func createAndFillLinkedList(for numberElements: Int) -> SingleLinkedList<String> {
        let queue = SingleLinkedList<String>()
        for counter in 0...numberElements {
            queue.add(String(counter))
        }
        return queue
    }
}
