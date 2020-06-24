//
//  Position.swift
//  CheckMate
//
//  Created by Sagar Ayi on 6/10/20.
//  Copyright © 2020 Random Corp. All rights reserved.
//

import Foundation

class Position: NSObject {
    var xPos: Int
    var yPos: Int

    init(xPos: Int, yPos: Int) {
        self.xPos = xPos
        self.yPos = yPos
    }
}
