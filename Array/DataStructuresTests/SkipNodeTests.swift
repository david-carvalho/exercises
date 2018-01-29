
import XCTest
@testable import DataStructures

class SkipNodeTests: XCTestCase {
    func testGivenSkipNodeWithLevelFour_SetNextSkipNodeWithLevelTwo_NextNodesSetCorrectly() {
        let levelFourSkipNode = SkipNode(with: "levelFourSkipNodeObject", level: 4)
        let levelTwoSkipNode = SkipNode(with: "levelTwoSkipNodeObject", level: 2)
        levelFourSkipNode.setSubSquenceNodes(to: levelTwoSkipNode)
        
        XCTAssertEqual(levelFourSkipNode.nodes[0].object,
                       levelTwoSkipNode.object)
        XCTAssertEqual(levelFourSkipNode.nodes[1].object,
                       levelTwoSkipNode.object)
    }
}
