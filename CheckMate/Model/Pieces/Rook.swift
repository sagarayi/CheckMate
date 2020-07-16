//
//  Rook.swift
//  CheckMate
//
//  Created by Sagar Madhu Ayi on 6/26/20.
//  Copyright © 2020 Random Corp. All rights reserved.
//

import UIKit

class Rook: Piece {

     init(pieceColor: Color, initialPosition: Position) {
        super.init(pieceType: Type.ROOK, pieceColor: pieceColor, initialPosition: initialPosition)
    }

    override func getLegalMoves() -> Set<Position> {
        var legalMoves: Set<Position> = Set()

        let currX = self.getCurrentPosition().xPos
        let currY = self.getCurrentPosition().yPos

        // White's perspective but applies to black as well
        // UP
        var rangeVar: [Int] = Array(currX...limit)
        for row in rangeVar {
            if !self.isOutOfBounds(xPos: row, yPos: currY) {
                legalMoves.insert(Position.init(xPos: row, yPos: currY))
            }
        }

        // DOWN
        rangeVar = Array(0...currX)
        for row in rangeVar {
            if !self.isOutOfBounds(xPos: row, yPos: currY) {
                legalMoves.insert(Position.init(xPos: row, yPos: currY))
            }
        }

        // LEFT
        rangeVar = Array(currY...limit)
        for col in rangeVar {
            if !self.isOutOfBounds(xPos: currX, yPos: col) {
                legalMoves.insert(Position.init(xPos: currX, yPos: col))
            }
        }

        // RIGHT
        rangeVar = Array(0...currY)
        for col in rangeVar {
            if !self.isOutOfBounds(xPos: currX, yPos: col) {
                legalMoves.insert(Position.init(xPos: currX, yPos: col))
            }
        }

        return legalMoves
    }
}
