//
//  ListTests.swift
//  ninetynineproblemsTests
//
//  Created by Marc O'Neill on 07/04/2018.
//  Copyright © 2018 marcexmachina. All rights reserved.
//

import XCTest
@testable import ninetynineproblems

class ListTests: XCTestCase {

    func testListLast_GivenMultipleValues() {
        let list = List(1, 2, 3, 4, 5, 6)
        XCTAssert(list?.last == 6)
    }

    func testListLast_GivenOneValue() {
        let list = List(4)
        XCTAssert(list?.last == 4)
    }

    func testListPennultimate_GivenMultipleValues() {
        let list = List(1, 2, 3, 4, 5)
        XCTAssert(list?.pennultimate == 4)
    }

    func testListSubscript3rdElement_GivenMultipleValues() {
        let list = List(1, 2, 7, 5, 4, 6)
        XCTAssert(list![2] == 7)
    }

    func testListSubscriptNil_GivenIndexOutOfRange() {
        let list = List(1)
        XCTAssertNil(list![3])
    }

    func testListLength_Given4Values() {
        let list = List(1,2,3,4)
        XCTAssert(list?.length == 4)
    }

    func testListLength_GivenSingleValue() {
        let list = List(5)
        XCTAssert(list?.length == 1)
    }
}
