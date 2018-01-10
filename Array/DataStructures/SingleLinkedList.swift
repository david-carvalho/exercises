
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
        let oldHead = head
        head = Node(with: object)
        head?.next = oldHead
    }
    
    func add(_ object: T) {
        guard let head = head else {
            self.head = Node(with: object)
            return;
        }
        
        add(object: object, after: self[count - 1])
    }
    
    @discardableResult func add(object: T, after node: Node<T>) -> Node<T> {
        let newNode = Node(with: object)
        newNode.next = node.next
        node.next = newNode
        return newNode
    }
    
    @discardableResult func remove(after node: Node<T>) -> Node<T>? {
        let nodeToRemove = node.next
        let nextNodeToRemove = nodeToRemove?.next
        node.next = nextNodeToRemove
        return nodeToRemove
    }
}

extension SingleLinkedList where T: Equatable {
    
    func contains(_ object: T) -> Bool {
        guard let head = head else {
            return false
        }
        var node: Node<T>? = head
        while (node != nil) {
            if node?.object == object {
                return true
            }
            
            node = node?.next
        }
        return false
    }
    
}


extension SingleLinkedList: Collection {
    func index(after i: Int) -> Int {
        return i + 1
    }

    var startIndex: Int {
        return 0
    }

    var endIndex: Int {
        return count
    }
    
    subscript(i: Int) -> Node<T> {
        get {
            assert(count > i, "Index [\(i)] out of bounds [\(count)]")
            let unwrappedHead: Node<T>! = head
            var node: Node<T>! = unwrappedHead
            for _ in 0..<i {
                node = node?.next
            }
            return node
        }
    }
}

