//
//  Pawn.swift
//  CheckMate
//
//  Created by Sagar Ayi on 6/10/20.
//  Copyright © 2020 Random Corp. All rights reserved.
//

import UIKit

class Pawn: Piece {
    private var canPromote = false

     init(pieceColor: Color,
          initialPosition: Position) {
        super.init(pieceType: Type.PAWN, pieceColor: pieceColor, initialPosition: initialPosition)
    }

    func isEligibleForPromotion() -> Bool {
        return self.canPromote
    }

    override func getLegalMoves() -> Set<Position> {
        var legalMoves: Set<Position> = Set()

        let firstMove: Bool = getInitialPosition().xPos == getCurrentPosition().xPos

        let xPos = getInitialPosition().xPos
        let yPos = getInitialPosition().yPos

        let increment = getColor() == Color.WHITE ? 1 : -1

        for col in [yPos, yPos - 1, yPos + 1] {
            if !self.isOutOfBounds(xPos: xPos + increment, yPos: col) {
                legalMoves.insert(Position.init(xPos: xPos + increment, yPos: col))
            }
        }

        if  getColor() == Color.WHITE {

            if firstMove {
                legalMoves.insert(Position.init(xPos: xPos+2, yPos: yPos))
            }

            if xPos == 7 {
                canPromote = true
            }

        } else {

            if firstMove {
                legalMoves.insert(Position.init(xPos: xPos-2, yPos: yPos))
            }

            if xPos == 0 {
                canPromote = true
            }
        }
        return legalMoves
    }

}
