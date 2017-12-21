
class Stack<T> {
    private var buffer: UnsafeMutablePointer<T>
    private(set) var count: Int = 0
    private var capacity: Int
    
    init(capacity: Int = 1) {
        // TODO: Any kind of thread operations will very easily break
        self.capacity = capacity
        buffer = UnsafeMutablePointer<T>.allocate(capacity: capacity)
    }
    
    deinit {
        // TODO: Investigate if this is enough
        buffer.deinitialize(count: count)
        buffer.deallocate(capacity: capacity)
    }
    
    func push(object: T) {
        increaseArrayCapacityIfNecessary()
        buffer.advanced(by: count).initialize(to: object)
        count += 1
    }
    
    @discardableResult func pop() -> T {
        let indexToRemove = count - 1
        let object: T = buffer.advanced(by: indexToRemove).pointee
        buffer.advanced(by: indexToRemove).deinitialize()
        
        count -= 1
        return object
    }

    
    private func increaseArrayCapacityIfNecessary() {
        if count >= capacity {
            increaseArrayCapacity()
        }
    }
    
    private func increaseArrayCapacity() {
        let tempCapacity = capacity * 2
        let tempBuffer = UnsafeMutablePointer<T>.allocate(capacity: tempCapacity)
        for counter in 0..<count {
            let object: T = buffer.advanced(by: counter).pointee
            tempBuffer.advanced(by: counter).initialize(to: object)
        }
        buffer.deinitialize(count: capacity)
        buffer.deallocate(capacity: capacity)
        buffer = tempBuffer
        capacity = tempCapacity
    }
}

extension Stack where T: Equatable {
    func contains(_ object: T) -> Bool {
        for counter in 0..<count {
            if object == buffer.advanced(by: counter).pointee {
                return true
            }
        }
        return false
    }
    
}
