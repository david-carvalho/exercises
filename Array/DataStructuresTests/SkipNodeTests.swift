
import XCTest
@testable import DataStructures

class SkipNodeTests: XCTestCase {
    func testGivenSkipNodeWithLevelFour_SetNextSkipNodeWithLevelTwo_NextNodesSetCorrectly() {
        let levelFourSkipNode = SkipSequenceNode(with: "levelFourSkipNodeObject", levels: 4)
        let levelTwoSkipNode = SkipSequenceNode(with: "levelTwoSkipNodeObject", levels: 2)
        levelFourSkipNode.setSubSquenceNodes(to: levelTwoSkipNode)
        
        XCTAssertEqual(levelFourSkipNode.nodes[0].object,
                       levelTwoSkipNode.nodes[0].object)
        XCTAssertEqual(levelFourSkipNode.nodes[1].object,
                       levelTwoSkipNode.nodes[1].object)
    }
}
