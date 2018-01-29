//
//  AddTwoNumbersTests.swift
//  AddTwoNumbersTests
//
//  Created by David Carvalho on 14/01/2018.
//  Copyright © 2018 David Carvalho. All rights reserved.
//

import XCTest

class AddTwoNumbersTests: XCTestCase {
    
    func testExample() {
        let l11 = ListNode(2)
        let l12 = ListNode(4)
        let l13 = ListNode(3)
        l11.next = l12
        l12.next = l13

        let l21 = ListNode(5)
        let l22 = ListNode(6)
        let l23 = ListNode(4)
        l21.next = l22
        l22.next = l23
        
//        let l11 = ListNode(5)
//        let l21 = ListNode(5)
        
//        let l11 = ListNode(1)
//        let l12 = ListNode(8)
//        l11.next = l12
//
//        let l21 = ListNode(1)
        
        let solution = Solution()
        var result = solution.addTwoNumbers(l11, l21)
        while result != nil {
            print(result?.val)
            result = result?.next
        }
    }
    
}

