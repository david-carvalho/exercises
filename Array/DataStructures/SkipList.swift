
import UIKit

class SkipList<T: Comparable> {
//    private let list: SingleLinkedList<SkipSequenceNode<T>>
    private var head: SkipNode<T>?
    
    private let NumberLevels: Int = 4
    var count: Int = 0
    
    public var description: String {
        var str = ""
        var node = head
        while node != nil {
            if let node = node {
                str += "\(node.object) -> \(node.level)\n"
            }
            node = node?.next
        }
        return str
    }

    func add(_ object: T) {
        let level = head == nil ? NumberLevels : randomLevel()
        add(object, at: level)
    }
    
    func add(_ object: T, at level: Int) {
        var skipNode = SkipNode(with: object,
                                level: level)
        
        var nodeAfter: SkipNode<T>? = nil
        var nodeBefore: SkipNode<T>? = nil
        var currentLevel = level
        while currentLevel > 0 {
            let findBeforeAndAfterResult = findBeforeAndAfter(with: head,
                                                              for: skipNode,
                                                              at: currentLevel)
            nodeBefore = findBeforeAndAfterResult.0
            nodeAfter = findBeforeAndAfterResult.1
            
            if currentLevel >= level {
                if nodeBefore?.nodes.count ?? 0 > 0 {
                    nodeBefore?.setSubSquenceNodes(to: skipNode, at: currentLevel)
                }
            }
            
            if currentLevel == 1 {
                
                if let nodeBefore = nodeBefore {
                    let nodeBehindNext = nodeBefore.next
                    nodeBefore.next = skipNode
                    skipNode.next  = nodeBehindNext
                    
                    if nodeBefore.nodes.count == 0 {
                        for i in 1...level {
                            nodeBefore.setSubSquenceNodes(to: skipNode, at: i)
                        }
                    }
                } else {
                    let oldHead = head
                    skipNode = SkipNode(with: object,
                                        level: NumberLevels)
                    head = skipNode
                    skipNode.next = oldHead
                }
                
                if let nodeAfter = nodeAfter {
                    skipNode.setSubSquenceNodes(to: nodeAfter)
                }
            }
            currentLevel -= 1
        }
        count += 1
    }
    
    private func findBeforeAndAfter(with startingNode: SkipNode<T>?,
                                    for node: SkipNode<T>,
                                    at level: Int) -> (SkipNode<T>?, SkipNode<T>?) {
        var before = startingNode
        var after: SkipNode<T>? = nil
        
        if let beforeCheck = before {
            if beforeCheck > node {
                return (nil, before)
            }
        }
        
        if before?.nodes.count ?? 0 >= level {
            after = before?.nodes[level - 1]
            
            while true {
                if let afterCheck = after,
                    let beforeCheck = before {
                    if beforeCheck < node && node < afterCheck {
                        break
                    } else {
                        before = afterCheck
                        if afterCheck.nodes.count > level - 1 {
                            after = afterCheck.nodes[level - 1]
                        } else {
                            after = nil
                        }
                    }
                } else {
                    break
                }
            }
        }
        return (before, after)
    }
    
    private func randomLevel() -> Int {
        return Int(arc4random_uniform(UInt32(NumberLevels))) + 1
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
    
    subscript(i: Int) -> SkipNode<T> {
        get {
            assert(count > i, "Index [\(i)] out of bounds [\(count)]")
            let unwrappedHead: SkipNode<T>! = head
            var node: SkipNode<T>! = unwrappedHead
            for _ in 0..<i {
                node = node?.next
            }
            return node
        }
    }
}

