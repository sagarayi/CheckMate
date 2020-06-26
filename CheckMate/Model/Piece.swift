//
//  Piece.swift
//  CheckMate
//
//  Created by Sagar Ayi on 6/10/20.
//  Copyright © 2020 Random Corp. All rights reserved.
//

import UIKit

class Piece: NSObject {
    let limit = 7
    private var pieceType: Type
    private var pieceColor: Color
    private var initialPosition: Position
    private var currentPosition: Position

    init(pieceType: Type,
         pieceColor: Color,
         initialPosition: Position) {
        self.pieceType = pieceType
        self.pieceColor = pieceColor
        self.initialPosition = initialPosition
        self.currentPosition = initialPosition
    }

    func getType() -> Type {
        return self.pieceType
    }

    func getColor() -> Color {
        return self.pieceColor
    }

    func getInitialPosition() -> Position {
        return self.initialPosition
    }

    func getCurrentPosition() -> Position {
        return self.currentPosition
    }

    func getLegalMoves() -> Set<Position> {
        return [Position.init(xPos: -1, yPos: -1)]
    }

    func isOutOfBounds(xPos: Int, yPos: Int, limit: Int) -> Bool {
        return (xPos < 0 || yPos < 0 || xPos > limit || yPos > limit)
    }
}
