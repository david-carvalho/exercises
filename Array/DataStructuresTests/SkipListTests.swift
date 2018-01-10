
import XCTest
@testable import DataStructures

class SkipListTests: XCTestCase {
    
    func testGivenSkipList_AddElement_CountIsOne() {
        let list = SkipList<String>()
        list.add("")
        XCTAssert(list.count == 1)
    }
    
    func testGivenSkipList_AddElement_SkipNodeLevelIsFour() {
        let list = SkipList<String>()
        list.add("")
        XCTAssert(list[0].levels == 4)
    }
    
    func testGivenSkipList_AddTwoElements_OrderIsCorrect() {
        let list = SkipList<String>()
        let testString1 = "testString1"
        let testString2 = "testString2"
        list.add(testString1)
        list.add(testString2)
        
        XCTAssertEqual(list[0].object, testString1)
        XCTAssertEqual(list[1].object, testString2)
    }
    
    func testGivenSkipList_AddTwoElementsUnordered_OrderIsCorrect() {
        let list = SkipList<String>()
        let testString1 = "testString1"
        let testString2 = "testString2"
        list.add(testString2)
        list.add(testString1)
        
        XCTAssertEqual(list[0].object, testString1)
        XCTAssertEqual(list[1].object, testString2)
    }
    
    func testGivenSkipList_AddTwoElements_FirstElementNextIsSetCorrectly() {
        let list = SkipList<String>()
        let testString1 = "testString1"
        let testString2 = "testString2"
        list.add(testString1)
        list.add(testString2)
        
        XCTAssertEqual(list[0].nodes.first?.object, testString2)
    }
    
//    func testGivenSkipList_AddElementsWithAlternatingLevels_FistSameLevelElementPointsToSecondSameLevelElement() {
//        let list = SkipList<String>()
//        let testString1 = "testString1"
//        let testString2 = "testString2"
//        let testString3 = "testString3"
//        let testString4 = "testString4"
//        list.add(testString1)
//        list.add(testString2, at: 3)
//        list.add(testString3, at: 2)
//        list.add(testString4, at: 3)
//        print(list.description)
//        XCTAssertEqual(list[1].nodes[2].object, list[3].object)
//    }
}
