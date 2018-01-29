
internal class DataStructureBuffer<T> {
    private(set) var pointer: UnsafeMutablePointer<T>
    private(set) var count: Int = 0
    private var capacity: Int
    
    init(capacity: Int = 1) {
        // TODO: Any kind of thread operations will very easily break
        self.capacity = capacity
        pointer = UnsafeMutablePointer<T>.allocate(capacity: capacity)
    }
    
    deinit {
        // TODO: Investigate if this is enough
        pointer.deinitialize(count: count)
        pointer.deallocate(capacity: capacity)
    }
    
    func increaseArrayCapacityIfNecessary() {
        if count >= capacity {
            increaseArrayCapacity()
        }
    }
    
    private func increaseArrayCapacity() {
        let tempCapacity = capacity * 10
        let tempBuffer = UnsafeMutablePointer<T>.allocate(capacity: tempCapacity)
        for counter in 0..<count {
            let object: T = pointer.advanced(by: counter).pointee
            tempBuffer.advanced(by: counter).initialize(to: object)
        }
        pointer.deinitialize(count: capacity)
        pointer.deallocate(capacity: capacity)
        pointer = tempBuffer
        capacity = tempCapacity
    }
    
    func remove(_ pointer: UnsafeMutablePointer<T>) {
        pointer.deinitialize()
        count -= 1
    }
    
    func add(_ object: T, to pointer: UnsafeMutablePointer<T>) {
        pointer.initialize(to: object)
        count += 1
    }
}
