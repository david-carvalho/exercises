
import XCTest
@testable import Array

class ArrayExerciseTests: XCTestCase {
    
    var runSpeedTests = false
    let numberElementsForSpeedRuns = [10_000,
                                      20_000,
                                      30_000,
                                      40_000]
    
    override func setUp() {
        super.setUp()
        runSpeedTests = true
    }
    
    func testArray_AddOneElement_CountIsOne() {
        let array = ArrayExercise<String>()
        array.append(object: "test")
        XCTAssert(array.count == 1)
    }
    
    func testGivenArrayWithCapacityTwo_AddThreeElements_CountIsThree() {
        let array = ArrayExercise<String>(capacity: 2)
        array.append(object: "test")
        array.append(object: "test")
        array.append(object: "test")
        XCTAssert(array.count == 3)
    }
    
    func testGivenArray_AddThreeElements_SecondElementIsCorrect() {
        let array = ArrayExercise<String>()
        array.append(object: "test1")
        array.append(object: "test2")
        array.append(object: "test3")
        XCTAssert(array[1] == "test2")
    }
    
    func testGivenArrayWithCapacityTwo_addThreeElements_ThirdElementCorrect() {
        let array = ArrayExercise<String>(capacity: 2)
        array.append(object: "test1")
        array.append(object: "test2")
        array.append(object: "test3")
        XCTAssert(array[2] == "test3")
    }
    
    func testAccess() {
        if runSpeedTests {
            for numberElements in numberElementsForSpeedRuns {
                runAccess(for: numberElements)
            }
        }
    }
    
    private func runAccess(for numberElements: Int) {
        let array = createAndFillArray(for: numberElements)
        countTime(for: numberElements, array: array) { (array, currentElements, index) in
            _ = array[index]
        }
    }
    
    func testSearch() {
        if runSpeedTests {
            for numberElements in numberElementsForSpeedRuns {
                runSearch(for: numberElements)
            }
        }
    }
    
    private func runSearch(for numberElements: Int) {
        let array = createAndFillArray(for: numberElements)
    
        countTime(for: numberElements, array: array) { (array, currentElement, index) in
            _ = array.contains(currentElement)
        }
    }
    
    private func countTime(for numberElements: Int,
                           array: ArrayExercise<String>,
                           operation: ((ArrayExercise<String>, String, Int) -> Void)) {
        var totalTime: Double = 0
        
        for counter in 0..<numberElements {
            let startDate = Date()
            operation(array, array[counter], counter)
            
            totalTime += Date().timeIntervalSince(startDate)
        }
        
        print("For \(numberElements) it took \(totalTime / Double(numberElements)) ms")
    }
    
    private func createAndFillArray(for numberElements: Int) -> ArrayExercise<String> {
        let array = ArrayExercise<String>()
        for counter in 0...numberElements {
            array.append(object: String(counter))
        }
        return array
    }
}
