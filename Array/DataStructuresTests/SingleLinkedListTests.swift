
import XCTest
@testable import DataStructures

class SingleLinkedListTests: XCTestCase {
    func testGivenLinkedList_AddOneElement_CountIsOne() {
        let singleLinkedList = SingleLinkedList<String>()
        singleLinkedList.add("")
        XCTAssert(singleLinkedList.count == 1)
    }
    
    func testGivenLinkedList_SetHead_HeadIsCorrect() {
        let singleLinkedList = SingleLinkedList<String>()
        let testString = "testString"
        singleLinkedList.setHead(with: testString)
        XCTAssertEqual(testString, singleLinkedList.head!.object)
    }
    
    func testGivenLinkedListWithHead_AddElement_ElementIsNextOfHead() {
        let testStringHead = "testStringHead"
        let testStringNext = "testStringNext"
        let singleLinkedList = SingleLinkedList<String>()
        singleLinkedList.setHead(with: testStringHead)
        
        singleLinkedList.add(testStringNext)
        
        XCTAssertEqual(singleLinkedList.head?.next?.object, testStringNext)
    }
    func testGivenLinkedListWithHead_AddElement_CountIsTwo() {
        let testStringHead = "testStringHead"
        let testStringNext = "testStringNext"
        let singleLinkedList = SingleLinkedList<String>()
        singleLinkedList.setHead(with: testStringHead)
        
        singleLinkedList.add(testStringNext)
        
        XCTAssert(singleLinkedList.count == 2)
    }
    
    func testGivenLinkedList_CountIsZero() {
        let singleLinkedList = SingleLinkedList<String>()
        XCTAssert(singleLinkedList.count == 0)
    }
    
//    func testGivenLinkedList_AccessOutOfBounds_ThrowsException() {
//            let singleLinkedList = SingleLinkedList<String>()
//        XCTAssertThrowsError(singleLinkedList[1])
//        XCTasser
//    }
    
    func testGivenLinkedList_AddTwoElements_SubscriptPositionTwoIsCorrect() {
        let testString1 = "testString1"
        let testString2 = "testString2"
        let singleLinkedList = SingleLinkedList<String>()
        singleLinkedList.add(testString1)
        singleLinkedList.add(testString2)
        XCTAssertEqual(singleLinkedList[1], testString2)
    }
    
    func testGivenLinkedList_AddThreeElements_SubscriptPositionThreeIsCorrect() {
        let testString1 = "testString1"
        let testString2 = "testString2"
        let testString3 = "testString3"
        let singleLinkedList = SingleLinkedList<String>()
        singleLinkedList.add(testString1)
        singleLinkedList.add(testString2)
        singleLinkedList.add(testString3)
        XCTAssertEqual(singleLinkedList[2], testString3)
    }
}
