//
//  King.swift
//  CheckMate
//
//  Created by Sagar Ayi on 6/10/20.
//  Copyright © 2020 Random Corp. All rights reserved.
//

import UIKit

class King: Piece {

     init(pieceColor: Color, initialPosition: Position) {
        super.init(pieceType: Type.KING, pieceColor: pieceColor, initialPosition: initialPosition)
    }

    override func getLegalMoves() -> [Position] {
        let xPos = self.getInitialPosition().xPos
        let yPos = self.getInitialPosition().yPos

        var positions: [Position] = []

        let xLimit = 7
        let yLimit = 7

        for row in [xPos, xPos + 1, xPos - 1] {
            for col in [yPos, yPos - 1, yPos + 1] {
                if xPos == row && yPos == col {
                    continue
                }

                if !self.isOutOfBounds(xPos: row, yPos: col, xLimit: xLimit, yLimit: yLimit) {
                    positions.append(Position.init(xPos: row, yPos: col))
                }
            }
        }

        return positions
    }
}
