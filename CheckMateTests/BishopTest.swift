//
//  BishopTest.swift
//  CheckMateTests
//
//  Created by Sagar Ayi on 7/8/20.
//  Copyright © 2020 Random Corp. All rights reserved.
//

import XCTest
@testable import CheckMate

class BishopTest: XCTestCase {
    var blackBishop1:Bishop?
    var whiteBishop1:Bishop?
    var blackBishop2:Bishop?
    var whiteBishop2:Bishop?

    override func setUp() {
        blackBishop1 = Bishop.init(pieceColor: Color.BLACK, initialPosition: Position.init(xPos: 7, yPos: 2))
        whiteBishop1 = Bishop.init(pieceColor: Color.WHITE, initialPosition: Position.init(xPos: 0, yPos: 2))
        blackBishop2 = Bishop.init(pieceColor: Color.BLACK, initialPosition: Position.init(xPos: 7, yPos: 5))
        whiteBishop2 = Bishop.init(pieceColor: Color.WHITE, initialPosition: Position.init(xPos: 0, yPos: 5))
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testLegalMoves() {
        let moves = blackBishop1?.getLegalMoves()
        for move in moves!{
            print("\(move.xPos) \(move.yPos)")
        }
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
