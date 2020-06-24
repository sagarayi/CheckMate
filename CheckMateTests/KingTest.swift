//
//  KingTest.swift
//  CheckMateTests
//
//  Created by Sagar Madhu Ayi on 6/24/20.
//  Copyright © 2020 Random Corp. All rights reserved.
//

import XCTest
@testable import CheckMate

class KingTest: XCTestCase {
    var blackKing: King!
    var whiteKing: King!
    override func setUpWithError() throws {
        self.blackKing = King.init(pieceColor: Color.BLACK, initialPosition: Position.init(xPos: 7, yPos: 3))
        self.whiteKing = King.init(pieceColor: Color.WHITE, initialPosition: Position.init(xPos: 0, yPos: 3))
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBlackLegalMoves() throws {
        let positions = self.blackKing.getLegalMoves()
        XCTAssertEqual(5, positions.count)
    }

    func testWhiteLegalMoves() throws {
        let positions = self.whiteKing.getLegalMoves()
        XCTAssertEqual(5, positions.count)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
