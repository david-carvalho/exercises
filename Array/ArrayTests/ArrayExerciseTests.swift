
import XCTest
@testable import Array

class ArrayExerciseTests: XCTestCase {
    
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
}
