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
        
        let currX = self.getCurrentPosition().xPos
        let currY = self.getCurrentPosition().yPos
        
        // White's perspective but applies to black as well
        // RIGHT-UP
        var xPos = currX + 2
        var yPos = currY - 1
        if !self.isOutOfBounds(xPos: xPos, yPos: yPos) {
            legalMoves.insert(Position.init(xPos: xPos, yPos: yPos))
        }
        
        xPos = currX + 1
        yPos = currY - 2
        if !self.isOutOfBounds(xPos: xPos, yPos: yPos) {
            legalMoves.insert(Position.init(xPos: xPos, yPos: yPos))
        }
        
        //LEFT-UP
        xPos = currX + 2
        yPos = currY + 1
        if !self.isOutOfBounds(xPos: xPos, yPos: yPos) {
            legalMoves.insert(Position.init(xPos: xPos, yPos: yPos))
        }
        
        xPos = currX + 1
        yPos = currY + 2
        if !self.isOutOfBounds(xPos: xPos, yPos: yPos) {
            legalMoves.insert(Position.init(xPos: xPos, yPos: yPos))
        }
        
        //LEFT-DOWN
        xPos = currX - 2
        yPos = currY + 1
        if !self.isOutOfBounds(xPos: xPos, yPos: yPos) {
            legalMoves.insert(Position.init(xPos: xPos, yPos: yPos))
        }
        
        xPos = currX - 1
        yPos = currY + 2
        if !self.isOutOfBounds(xPos: xPos, yPos: yPos) {
            legalMoves.insert(Position.init(xPos: xPos, yPos: yPos))
        }
        
        //RIGHT-DOWN
        xPos = currX - 2
        yPos = currY - 1
        if !self.isOutOfBounds(xPos: xPos, yPos: yPos) {
            legalMoves.insert(Position.init(xPos: xPos, yPos: yPos))
        }
        
        xPos = currX - 1
        yPos = currY - 2
        if !self.isOutOfBounds(xPos: xPos, yPos: yPos) {
            legalMoves.insert(Position.init(xPos: xPos, yPos: yPos))
        }

           return legalMoves
       }
}
