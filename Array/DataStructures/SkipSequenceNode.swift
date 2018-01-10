
class SkipSequenceNode<T: Comparable> {
    private(set) var nodes: DataStructures.Array<SkipSequenceNode> = DataStructures.Array<SkipSequenceNode>()
    
    let object: T
    
    var levels: Int {
        get {
            return nodes.count
        }
    }
    
    init(with object: T, levels: Int) {
        assert(levels > 0, "Levels can't be less than 1")
        self.object = object
        for _ in 0..<levels {
            nodes.append(object: self)
        }
    }
    
    func setSubSquenceNodes(to node: SkipSequenceNode<T>) {
        let nodesCount = nodes.count
        nodes = DataStructures.Array<SkipSequenceNode>()
        for _ in 0..<nodesCount {
            nodes.append(object: node)
        }
    }
}

extension SkipSequenceNode: Comparable {
    public static func ==(lhs: SkipSequenceNode, rhs: SkipSequenceNode) -> Bool {
        return lhs.object == rhs.object
    }
    
    public static func <(lhs: SkipSequenceNode, rhs: SkipSequenceNode) -> Bool {
        return lhs.object < rhs.object
    }
    
    public static func <=(lhs: SkipSequenceNode, rhs: SkipSequenceNode) -> Bool {
        return lhs.object <= rhs.object
    }
    
    
    public static func >=(lhs: SkipSequenceNode, rhs: SkipSequenceNode) -> Bool {
        return lhs.object >= rhs.object
    }
    
    public static func >(lhs: SkipSequenceNode, rhs: SkipSequenceNode) -> Bool {
        return lhs.object > rhs.object
    }
}
