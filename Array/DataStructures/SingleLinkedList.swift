
class SingleLinkedList<T> {
    private (set) var head: Node<T>?
    
    var count: Int {
        get {
            guard let head = head else {
                return 0
            }
            var counter = 1
            var node: Node? = head
            while node?.next != nil {
                counter += 1
                node = node?.next
            }
            return counter
        }
    }
    
    func setHead(with object: T) {
        head = Node(with: object)
    }
    
    func add(_ object: T) {
        guard let head = head else {
            self.head = Node(with: object)
            return;
        }
        var lastNode = head
        while (lastNode.next != nil) {
            if let nextNode = lastNode.next {
                lastNode = nextNode
            }
        }
        lastNode.next = Node(with: object)
    }
}

extension SingleLinkedList: Collection {
    func index(after i: Int) -> Int {
        return 0
    }

    var startIndex: Int {
        return 0
    }

    var endIndex: Int {
        return count
    }
    
    subscript(i: Int) -> T {
        get {
            assert(count > i, "Index out of bounds")
            let unwrappedHead: Node<T>! = head
            var node: Node<T>! = unwrappedHead
            for _ in 0..<i {
                node = node?.next
            }
            return node.object
        }
    }
}

