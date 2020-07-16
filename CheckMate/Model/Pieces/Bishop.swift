//
//  Bishop.swift
//  CheckMate
//
//  Created by Sagar Ayi on 7/8/20.
//  Copyright © 2020 Random Corp. All rights reserved.
//

import UIKit

class Bishop: Piece {

    init(pieceColor: Color, initialPosition: Position) {
        super.init(pieceType: Type.BISHOP, pieceColor: pieceColor, initialPosition: initialPosition)
    }

    override func getLegalMoves() -> Set<Position> {
        var legalMoves: Set<Position> = Set()

        let currX = self.getCurrentPosition().xPos
        let currY = self.getCurrentPosition().yPos

        // White's perspective but applies to black as well
        // RIGHT-UP
        var xPos = currX + 1
        var yPos = currY - 1
        while !self.isOutOfBounds(xPos: xPos, yPos: yPos) {
           legalMoves.insert(Position.init(xPos: xPos, yPos: yPos))
            xPos = currX + 1
            yPos = currY - 1
        }

        // RIGHT-DOWN
        xPos = currX - 1
        yPos = currY - 1
        while !self.isOutOfBounds(xPos: xPos, yPos: yPos) {
           legalMoves.insert(Position.init(xPos: xPos, yPos: yPos))
            xPos = currX - 1
            yPos = currY - 1
        }

        // LEFT-UP
        xPos = currX + 1
        yPos = currY + 1
        while !self.isOutOfBounds(xPos: xPos, yPos: yPos) {
           legalMoves.insert(Position.init(xPos: xPos, yPos: yPos))
            xPos = currX + 1
            yPos = currY + 1
        }

        // LEFT-DOWN
        xPos = currX - 1
        yPos = currY + 1
        while !self.isOutOfBounds(xPos: xPos, yPos: yPos) {
           legalMoves.insert(Position.init(xPos: xPos, yPos: yPos))
            xPos = currX - 1
            yPos = currY + 1
        }
        return legalMoves
    }
}
