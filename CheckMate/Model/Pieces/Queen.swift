//
//  Queen.swift
//  CheckMate
//
//  Created by Sagar Madhu Ayi on 7/16/20.
//  Copyright © 2020 Random Corp. All rights reserved.
//

import UIKit

class Queen: Piece {

    init(pieceColor: Color, initialPosition: Position) {
           super.init(pieceType: Type.QUEEN, pieceColor: pieceColor, initialPosition: initialPosition)
       }

       override func getLegalMoves() -> Set<Position> {
           var legalMoves: Set<Position> = Set()

        let bishop = Bishop.init(pieceColor: self.getColor(), initialPosition: self.getCurrentPosition())
        let rook = Rook.init(pieceColor: self.getColor(), initialPosition: self.getCurrentPosition())

        for move in bishop.getLegalMoves() {
            legalMoves.insert(move)
        }

        for move in rook.getLegalMoves() {
            legalMoves.insert(move)
        }
           return legalMoves
       }
}
