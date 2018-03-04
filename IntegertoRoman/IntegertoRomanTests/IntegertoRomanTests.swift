//
//  IntegertoRomanTests.swift
//  IntegertoRomanTests
//
//  Created by David Carvalho on 04/03/2018.
//  Copyright © 2018 David Carvalho. All rights reserved.
//

import XCTest

class IntegertoRomanTests: XCTestCase {
    
  
    func testExample() {
        let solution = Solution()
//        print("1 -> \(solution.intToRoman(1))")
//        print("2 -> \(solution.intToRoman(2))")
//        print("3 -> \(solution.intToRoman(3))")
//        print("4 -> \(solution.intToRoman(4))")
//        print("5 -> \(solution.intToRoman(5))")
//        print("6 -> \(solution.intToRoman(6))")
//        print("7 -> \(solution.intToRoman(7))")
//        print("8 -> \(solution.intToRoman(8))")
        print("9 -> \(solution.intToRoman(9))")
//        print("10 -> \(solution.intToRoman(10))")
//        print("11 -> \(solution.intToRoman(11))")
//        print("21 -> \(solution.intToRoman(21))")
//        print("22 -> \(solution.intToRoman(22))")
//        print("322 -> \(solution.intToRoman(322))")
//        print("332 -> \(solution.intToRoman(332))")
//        print("333 -> \(solution.intToRoman(333))")
//        print("3333 -> \(solution.intToRoman(3333))")
//        print("3433 -> \(solution.intToRoman(3433))")
//        print("3453 -> \(solution.intToRoman(3453))")
//        print("3999 -> \(solution.intToRoman(3999))")
        
        
        XCTAssert(solution.intToRoman(1) == "I")
        XCTAssert(solution.intToRoman(2) == "II")
        XCTAssert(solution.intToRoman(3) == "III")
        XCTAssert(solution.intToRoman(4) == "IV")
        XCTAssert(solution.intToRoman(5) == "V")
        XCTAssert(solution.intToRoman(6) == "VI")
        XCTAssert(solution.intToRoman(7) == "VII")
        XCTAssert(solution.intToRoman(8) == "VIII")
        XCTAssert(solution.intToRoman(9) == "IX")
        XCTAssert(solution.intToRoman(10) == "X")
        XCTAssert(solution.intToRoman(11) == "XI")
        XCTAssert(solution.intToRoman(21) == "XXI")
        XCTAssert(solution.intToRoman(22) == "XXII")
        XCTAssert(solution.intToRoman(322) == "CCCXXII")
        XCTAssert(solution.intToRoman(332) == "CCCXXXII")
        XCTAssert(solution.intToRoman(333) == "CCCXXXIII")
        XCTAssert(solution.intToRoman(3333) == "MMMCCCXXXIII")
        XCTAssert(solution.intToRoman(3433) == "MMMCDXXXIII")
        XCTAssert(solution.intToRoman(3453) == "MMMCDLIII")
        XCTAssert(solution.intToRoman(3999) == "MMMCMXCIX")
    }
    
}
