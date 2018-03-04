
import XCTest
@testable import DataStructures

class HashTableTest: XCTestCase {
    
    func testGivenHashTable_AddElement_CountIncreases() {
        let hashtable = HashTable<String>()
        hashtable.insert(element: "testString")
        XCTAssert(hashtable.count == 1)
    }
    
}
