
class Queue<T> {

    private var buffer: DataStructureBuffer<T>
    
    init(capacity: Int = 1) {
        // TODO: Any kind of thread operations will very easily break
        buffer = DataStructureBuffer<T>(capacity: capacity)
    }
    
    func add(_ object: T) {
        buffer.increaseArrayCapacityIfNecessary()
        let pointer = buffer.pointer.advanced(by: buffer.count)
        buffer.add(object, to: pointer)
    }
    
    @discardableResult func remove() -> T {
        let indexToRemove = buffer.count - 1
        let pointer = buffer.pointer.advanced(by: indexToRemove)
        let object: T = pointer.pointee
        buffer.remove(pointer)
        return object
    }
    
    func count() -> Int {
        return buffer.count
    }
}

extension Queue where T: Equatable {
    func contains(_ object: T) -> Bool {
        for counter in 0..<buffer.count {
            if object == buffer.pointer.advanced(by: counter).pointee {
                return true
            }
        }
        return false
    }
    
}
