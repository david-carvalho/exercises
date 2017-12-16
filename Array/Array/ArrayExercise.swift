
class ArrayExercise<T> {
    
    private var buffer: UnsafeMutablePointer<T>
    private(set) var count: Int = 0
    private var capacity: Int
    
    init(capacity: Int = 10) {
        // TODO: deallocate this
        self.capacity = capacity
        buffer = UnsafeMutablePointer<T>.allocate(capacity: capacity)
    }
    
    func append(object: T) {
        if count >= capacity {
            let tempCapacity = capacity * 2
            let tempBuffer = UnsafeMutablePointer<T>.allocate(capacity: tempCapacity)
            for counter in 0...count {
                let object: T = buffer.advanced(by: counter).pointee
                tempBuffer.advanced(by: counter).initialize(to: object)
                buffer.advanced(by: counter).deinitialize()
            }
            buffer.deallocate(capacity: capacity)
            buffer = tempBuffer
            capacity = tempCapacity
        }
        buffer.advanced(by: count).initialize(to: object)
        count += 1
    }
}

extension ArrayExercise: Collection {
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
            return buffer[i]
        }
    }
}

