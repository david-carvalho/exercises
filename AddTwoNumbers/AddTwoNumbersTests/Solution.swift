//
//  Solution.swift
//  AddTwoNumbersTests
//
//  Created by David Carvalho on 14/01/2018.
//  Copyright © 2018 David Carvalho. All rights reserved.
//

import UIKit



public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var resultNode: ListNode? = nil
        var lastNode: ListNode? = nil
        
        var l1Node = l1
        var l2Node = l2
        var carryValue = 0
        while true {
            
            var partialNumber = 0
            
            if let l1Node = l1Node {
                partialNumber += l1Node.val
            }
            
            if let l2Node = l2Node {
                partialNumber += l2Node.val
            }
            
            partialNumber += carryValue
            
            carryValue = partialNumber / 10
            let newNode = ListNode(partialNumber % 10)
            
            if resultNode == nil {
                resultNode = newNode
                lastNode = resultNode
            } else {
                lastNode?.next = newNode
                lastNode = newNode
            }
            
            l1Node = l1Node?.next
            l2Node = l2Node?.next
            
            if l1Node == nil && l2Node == nil {
                break
            }
        }
        
        while carryValue > 0 {
            let newNode = ListNode(carryValue % 10)
            lastNode?.next = newNode
            lastNode = newNode
            
            carryValue = carryValue / 10
        }
        
        return resultNode
    
    }
}
