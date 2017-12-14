
class Array<T> {
    
    private let buffer: UnsafeMutablePointer<UInt8>
    
    init(with capacity: Int = 10) {
//        buffer = [UInt8](repeating: 0, count: capacity)
        
        // TODO: deallocate this
        buffer = UnsafeMutablePointer<UInt8>.allocate(capacity: capacity)
    }
}

//extension Array: MutableCollection {
//    var startIndex: Array.Index {
//        <#code#>
//    }
//
//    var endIndex: Array.Index {
//        <#code#>
//    }
//
//
//}

