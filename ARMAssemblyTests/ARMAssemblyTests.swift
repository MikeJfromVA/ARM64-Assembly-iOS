//
//  ARMAssemblyTests.swift
//  ARMAssemblyTests
//
//  Created by Michael Johnson on 5/18/18.
//  Copyright © 2018 Michael Johnson. All rights reserved.
//

import XCTest
@testable import ARMAssembly

class ARMAssemblyTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPopcount() {
        XCTAssert(popcount(0) == 0)
        XCTAssert(popcount(1) == 1)
        XCTAssert(popcount(2) == 1)
        XCTAssert(popcount(3) == 2)
        XCTAssert(popcount(4) == 1)
        XCTAssert(popcount(5) == 2)
        
        XCTAssert(popcount(250) == 6)
        XCTAssert(popcount(251) == 7)
        XCTAssert(popcount(252) == 6)
        XCTAssert(popcount(253) == 7)
        XCTAssert(popcount(254) == 7)
        XCTAssert(popcount(255) == 8)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
