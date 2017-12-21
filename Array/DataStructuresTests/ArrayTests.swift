
import XCTest
@testable import DataStructures

class ArrayTests: XCTestCase {
    
    var runSpeedTests = false
    let numberElementsForSpeedRuns = [3_000,
                                      6_000,
                                      9_000,
                                      12_000]
    
    override func setUp() {
        super.setUp()
        runSpeedTests = false
    }
    
    func testArray_AddOneElement_CountIsOne() {
        let array = DataStructures.Array<String>()
        array.append(object: "test")
        XCTAssert(array.count == 1)
    }
    
    func testGivenArrayWithCapacityTwo_AddThreeElements_CountIsThree() {
        let array = DataStructures.Array<String>(capacity: 2)
        array.append(object: "test")
        array.append(object: "test")
        array.append(object: "test")
        XCTAssert(array.count == 3)
    }
    
    func testGivenArray_AddThreeElements_SecondElementIsCorrect() {
        let array = DataStructures.Array<String>()
        array.append(object: "test1")
        array.append(object: "test2")
        array.append(object: "test3")
        XCTAssert(array[1] == "test2")
    }
    
    func testGivenArrayWithCapacityTwo_AddThreeElements_ThirdElementCorrect() {
        let array = DataStructures.Array<String>(capacity: 2)
        array.append(object: "test1")
        array.append(object: "test2")
        array.append(object: "test3")
        XCTAssertEqual(array[2], "test3")
    }
    
    
    func testGivenArray_AddThreeElementsInsertOneAtPositionTwo_AllObjectsInCorrectPosition() {
        let array = DataStructures.Array<String>()
        array.append(object: "test1")
        array.append(object: "test2")
        array.append(object: "test3")
        array.insert("test4", at: 1)
        XCTAssertEqual("test1", array[0])
        XCTAssertEqual("test2", array[2])
        XCTAssertEqual("test3", array[3])
        XCTAssertEqual("test4", array[1])
    }
    
    func testGivenArray_AddThreeElements_DeleteMiddleElementAndTheOtherElementsShouldBePresent() {
        let array = DataStructures.Array<String>()
        array.append(object: "test1")
        array.append(object: "test2")
        array.append(object: "test3")
        array.removeObject(at: 1)
        XCTAssertEqual("test1", array[0])
        XCTAssertEqual("test3", array[1])
    }
    
    func testGivenArray_AddThreeElements_DeleteLastElementAndTheOtherElementsShouldBePresent() {
        let array = DataStructures.Array<String>()
        array.append(object: "test1")
        array.append(object: "test2")
        array.append(object: "test3")
        array.removeObject(at: 2)
        XCTAssertEqual("test1", array[0])
        XCTAssertEqual("test2", array[1])
    }
    
    func testGivenArray_AddThreeElements_DeleteFirstElementAndTheOtherElementsShouldBePresent() {
        let array = DataStructures.Array<String>()
        array.append(object: "test1")
        array.append(object: "test2")
        array.append(object: "test3")
        array.removeObject(at: 0)
        XCTAssertEqual("test2", array[0])
        XCTAssertEqual("test3", array[1])
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
        if runSpeedTests {
            for numberElements in numberElementsForSpeedRuns {
                runInsertion(for: numberElements)
            }
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
        if runSpeedTests {
            for numberElements in numberElementsForSpeedRuns {
                runDeletion(for: numberElements)
            }
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
