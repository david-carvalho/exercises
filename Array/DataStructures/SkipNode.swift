
class SkipNode<T: Comparable> {
    private(set) var nodes: [SkipNode] = []
    let level: Int
    var next: SkipNode<T>?
    let object: T
    
    init(with object: T, level: Int) {
        assert(level > 0, "Levels can't be less than 1")
        self.object = object
        self.level = level
    }
    
    func setSubSquenceNodes(to node: SkipNode<T>, at level: Int) {
        if level <= self.level {
            for _ in nodes.count..<level {
                nodes.append(node)
            }
            
            nodes[level - 1] = node
        }
    }
    
    func setSubSquenceNodes(to node: SkipNode<T>) {
        nodes = []
        for _ in 0..<level {
            nodes.append(node)
        }
    }
}

extension SkipNode: Comparable {
    public static func ==(lhs: SkipNode, rhs: SkipNode) -> Bool {
        return lhs.object == rhs.object
    }
    
    public static func <(lhs: SkipNode, rhs: SkipNode) -> Bool {
        return lhs.object < rhs.object
    }
    
    public static func <=(lhs: SkipNode, rhs: SkipNode) -> Bool {
        return lhs.object <= rhs.object
    }
    
    
    public static func >=(lhs: SkipNode, rhs: SkipNode) -> Bool {
        return lhs.object >= rhs.object
    }
    
    public static func >(lhs: SkipNode, rhs: SkipNode) -> Bool {
        return lhs.object > rhs.object
    }
}
