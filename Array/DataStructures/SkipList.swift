
import UIKit

class SkipList<T: Comparable> {
    private let list: SingleLinkedList<SkipSequenceNode<T>>
    
    private let NumberLevels: UInt32 = 4
    var count: Int {
        get {
            return list.count
        }
    }
    
    public var description: String {
        var str = ""
        for node in list {
            str += "\(node.object.object) -> \(node.object.nodes.count)\n"
        }
        return str
    }
    
    init() {
        list = SingleLinkedList<SkipSequenceNode<T>>()
    }
    
    func add(_ object: T) {
        let level = list.count == 0 ? Int(NumberLevels) : randomLevel()
        add(object, at: level)
    }
    
    func add(_ object: T, at level: Int) {
        let skipNode = SkipSequenceNode(with: object,
                                        levels: level)
        if list.count > 0 {
            var nodeAhead: Node<SkipSequenceNode<T>>? = nil
            var nodeBehind: Node<SkipSequenceNode<T>>? = nil
            for node in list {
                if node.object > skipNode {
                    nodeAhead = node
                    break;
                }
                nodeBehind = node
            }
            
            if let nodeBehind = nodeBehind {
                list.add(object: skipNode,
                         after: nodeBehind)
                nodeBehind.object.setSubSquenceNodes(to: skipNode)
            } else {
                list.setHead(with: SkipSequenceNode(with: object,
                                                    levels: Int(NumberLevels)))
            }
            
            if let nodeAhead = nodeAhead {
                skipNode.setSubSquenceNodes(to: nodeAhead.object)
            }
        } else {
            list.add(skipNode)
        }
    }
    
    private func randomLevel() -> Int {
        return Int(arc4random_uniform(NumberLevels)) + 1
    }
    
    
}

extension SkipList: Collection {
    func index(after i: Int) -> Int {
        return i + 1
    }
    
    var startIndex: Int {
        return 0
    }
    
    var endIndex: Int {
        return count
    }
    
    subscript(i: Int) -> SkipSequenceNode<T> {
        get {
            return list[i].object
        }
    }
}

