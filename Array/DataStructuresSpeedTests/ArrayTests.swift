
import XCTest
@testable import DataStructures

class ArrayTests: XCTestCase {
    
    let numberElementsForSpeedRuns = [3_000,
                                      6_000,
                                      9_000,
                                      12_000]
    
    
    
    func testAccess() {
        for numberElements in numberElementsForSpeedRuns {
            runAccess(for: numberElements)
        }
    }
    
    private func runAccess(for numberElements: Int) {
        let array = createAndFillArray(for: numberElements)
        countTime(for: numberElements, array: array) { (array, currentElements, index) in
            _ = array[index]
        }
    }
    
    func testSearch() {
        for numberElements in numberElementsForSpeedRuns {
            runSearch(for: numberElements)
        }
    }
    
    private func runSearch(for numberElements: Int) {
        let array = createAndFillArray(for: numberElements)
        
        countTime(for: numberElements, array: array) { (array, currentElement, index) in
            _ = array.contains(currentElement)
        }
    }
    
    private func countTime(for numberElements: Int,
                           array: DataStructures.Array<String>,
                           operation: ((DataStructures.Array<String>, String, Int) -> Void)) {
        var totalTime: Double = 0
        
        for counter in 0..<numberElements {
            let startDate = Date()
            operation(array, array[counter], counter)
            
            totalTime += Date().timeIntervalSince(startDate)
        }
        
        printResult(for: numberElements, totalTime: totalTime)
    }
    
    private func createAndFillArray(for numberElements: Int) -> DataStructures.Array<String> {
        let array = DataStructures.Array<String>()
        for counter in 0...numberElements {
            array.append(object: String(counter))
        }
        return array
    }
    
    func testInsertion() {
        for numberElements in numberElementsForSpeedRuns {
            runInsertion(for: numberElements)
        }
    }
    
    private func runInsertion(for numberElements: Int) {
        
        var totalTime: Double = 0
        
        for counter in 0..<numberElements {
            let arrayToAdd = createAndFillArray(for: numberElements)
            let startDate = Date()
            
            arrayToAdd.insert("test object",
                              at: counter)
            
            totalTime += Date().timeIntervalSince(startDate)
        }
        
        printResult(for: numberElements, totalTime: totalTime)
    }
    
    func testDeletion() {
        for numberElements in numberElementsForSpeedRuns {
            runDeletion(for: numberElements)
        }
    }
    
    private func runDeletion(for numberElements: Int) {
        
        var totalTime: Double = 0
        
        for counter in 0..<numberElements {
            let arrayToRemove = createAndFillArray(for: numberElements)
            let startDate = Date()
            
            arrayToRemove.removeObject(at: counter)
            
            totalTime += Date().timeIntervalSince(startDate)
        }
        
        printResult(for: numberElements, totalTime: totalTime)
    }
    
    func printResult(for numberElements: Int, totalTime: Double) {
        print("For \(numberElements) it took \(totalTime / Double(numberElements)) s")
    }
}

