//
//  RookTest.swift
//  CheckMateTests
//
//  Created by Sagar Madhu Ayi on 6/26/20.
//  Copyright © 2020 Random Corp. All rights reserved.
//

import XCTest
@testable import CheckMate

class RookTest: XCTestCase {
    var blackRook1: Rook!
    var whiteRook1: Rook!
    var blackRook2: Rook!
    var whiteRook2: Rook!

    override func setUpWithError() throws {
        self.blackRook1 = Rook.init(pieceColor: Color.BLACK, initialPosition: Position.init(xPos: 7, yPos: 0))
        self.blackRook2 = Rook.init(pieceColor: Color.BLACK, initialPosition: Position.init(xPos: 7, yPos: 7))
        self.whiteRook1 = Rook.init(pieceColor: Color.WHITE, initialPosition: Position.init(xPos: 0, yPos: 0))
        self.whiteRook2 = Rook.init(pieceColor: Color.WHITE, initialPosition: Position.init(xPos: 0, yPos: 7))
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLegalMoves() throws {
        XCTAssertEqual(15, blackRook1.getLegalMoves().count)
        XCTAssertEqual(15, blackRook2.getLegalMoves().count)
        XCTAssertEqual(15, whiteRook1.getLegalMoves().count)
        XCTAssertEqual(15, whiteRook2.getLegalMoves().count)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
