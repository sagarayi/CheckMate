//
//  PawnTest.swift
//  CheckMateTests
//
//  Created by Sagar Madhu Ayi on 6/24/20.
//  Copyright © 2020 Random Corp. All rights reserved.
//

import XCTest
@testable import CheckMate

class PawnTest: XCTestCase {

    var blackPawn: Pawn!
    var whitePawn: Pawn!
    override func setUpWithError() throws {

        self.blackPawn = Pawn.init( pieceColor: Color.BLACK,
                                    initialPosition: Position.init(xPos: 6, yPos: 4))
        self.whitePawn = Pawn.init( pieceColor: Color.WHITE,
                                    initialPosition: Position.init(xPos: 1, yPos: 4))
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBlackLegalMoves() throws {
        let pos = self.blackPawn.getLegalMoves()
        XCTAssertEqual(4, pos.count)
    }

    func testWhiteLegalMoves() throws {
        let pos = self.whitePawn.getLegalMoves()
        XCTAssertEqual(4, pos.count)
    }

    func testEligibleForPromotion() throws {
        XCTAssertFalse(self.blackPawn.isEligibleForPromotion())
        XCTAssertFalse(self.whitePawn.isEligibleForPromotion())
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
