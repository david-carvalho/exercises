//
//  TheFullCountingSortTests.swift
//  TheFullCountingSortTests
//
//  Created by David Carvalho on 10/07/2018.
//  Copyright © 2018 David Carvalho. All rights reserved.
//

import XCTest
@testable import TheFullCountingSort

class TheFullCountingSortTests: XCTestCase {
    
    func testExample() {
        let solution = Solution()
        solution.countingSort(n: 20, x: [
            (0, "ab"),
            (6, "cd"),
            (0, "ef"),
            (6, "gh"),
            (4, "ij"),
            (0, "ab"),
            (6, "cd"),
            (0, "ef"),
            (6, "gh"),
            (0, "ij"),
            (4, "that"),
            (3, "be"),
            (0, "to"),
            (1, "be"),
            (5, "question"),
            (1, "or"),
            (2, "not"),
            (4, "is"),
            (2, "to"),
            (4, "the")])
    }
}
