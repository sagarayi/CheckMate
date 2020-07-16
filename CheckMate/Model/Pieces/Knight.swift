//
//  Knight.swift
//  CheckMate
//
//  Created by Sagar Madhu Ayi on 7/16/20.
//  Copyright © 2020 Random Corp. All rights reserved.
//

import UIKit

class Knight: Piece {

    init(pieceColor: Color, initialPosition: Position) {
           super.init(pieceType: Type.KNIGHT, pieceColor: pieceColor, initialPosition: initialPosition)
       }

       override func getLegalMoves() -> Set<Position> {
        var legalMoves: Set<Position> = Set()


           return legalMoves
       }
}
