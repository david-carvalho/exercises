
import XCTest
@testable import DataStructures

class ArrayTests: XCTestCase {
    
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
}
