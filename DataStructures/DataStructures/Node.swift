
class Node<T> {
    var next: Node?
    let object: T
    
    init(with object: T) {
        next = nil
        self.object = object
    }
}
