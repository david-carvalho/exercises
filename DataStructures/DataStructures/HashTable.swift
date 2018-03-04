//
//  HashTable.swift
//  DataStructures
//
//  Created by David Carvalho on 04/03/2018.
//  Copyright © 2018 David Carvalho. All rights reserved.
//

import Foundation

class HashTable<T: Hashable> {
    private var array = [T]()
    
    var count: Int {
        get {
            return 1
        }
    }
    
    func insert(element: T) {
        array[0] = element
    }
}
