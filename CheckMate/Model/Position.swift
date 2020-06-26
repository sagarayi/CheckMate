//
//  Position.swift
//  CheckMate
//
//  Created by Sagar Ayi on 6/10/20.
//  Copyright © 2020 Random Corp. All rights reserved.
//

import Foundation

class Position: Equatable, Hashable {
    var xPos: Int
    var yPos: Int

    init(xPos: Int, yPos: Int) {
        self.xPos = xPos
        self.yPos = yPos
    }

    // Hashable and Equatable Methods
    static func == (lhs: Position, rhs: Position) -> Bool {
        return lhs.xPos == rhs.xPos && lhs.yPos == rhs.yPos
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(xPos)
        hasher.combine(yPos)
    }
}
