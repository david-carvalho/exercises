
class ArrayExercise<T> {
    
    private let buffer: UnsafeMutablePointer<T>
    private(set) var count: Int = 0
    private var capacity: Int
    
    init(capacity: Int = 10) {
        // TODO: deallocate this
        self.capacity = capacity
        buffer = UnsafeMutablePointer<T>.allocate(capacity: capacity)
    }
    
    func append(object: T) {
        if count >= capacity {
            return
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

