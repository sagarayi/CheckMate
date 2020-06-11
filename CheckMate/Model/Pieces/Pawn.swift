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
    
    func isEligibleForPromotion() -> Bool{
        return self.canPromote
    }
    
    func getLegalMoves() -> [Position]{
        let pos = getInitialPosition();
        var legalMoves:[Position] = []
        if(pos.x == getCurrentPosition().x){
            legalMoves.append(Position.init(x: pos.x + 2, y: pos.y))
        }
        if ( getColor() == Color.WHITE){
            if (pos.x < 7) {
                legalMoves.append(Position.init(x: pos.x + 1, y: pos.y))
            }
            if (pos.x == 7) {
                canPromote = true
            }
            if  (pos.y >= 1 && pos.y <= 6){
                legalMoves.append(Position.init(x: pos.x + 1, y: pos.y-1));
                legalMoves.append(Position.init(x: pos.x + 1, y: pos.y+1));
            }
            if (pos.y == 1){
                legalMoves.append(Position.init(x: pos.x + 1, y: pos.y+1));
            }
            if (pos.y == 7){
                legalMoves.append(Position.init(x: pos.x + 1, y: pos.y-1));
            }
            
        } else {
            if (pos.x > 0) {
                legalMoves.append(Position.init(x: pos.x - 1, y: pos.y))
            }
            if (pos.x == 0) {
                canPromote = true
            }
            if  (pos.y >= 1 && pos.y <= 6){
                legalMoves.append(Position.init(x: pos.x - 1, y: pos.y-1));
                legalMoves.append(Position.init(x: pos.x - 1, y: pos.y+1));
            }
            if (pos.y == 1){
                legalMoves.append(Position.init(x: pos.x - 1, y: pos.y+1));
            }
            if (pos.y == 7){
                legalMoves.append(Position.init(x: pos.x - 1, y: pos.y-1));
            }
        }
        return legalMoves
    }
    
}
