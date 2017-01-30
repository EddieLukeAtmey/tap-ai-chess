//
//  King.swift
//  Chess pre-test
//
//  Created by JPLee on 11/20/16.
//  Copyright © 2016 JPLee. All rights reserved.
//

import Foundation

class King: Piece {
    
    init(coordinate: Coordinate, side: Side) {
        super.init(coordinate: coordinate, side: side, type: .king)
        self.collectionOfDeltaMoves = [deltaMoves(x: 0, y: 1), deltaMoves(x: 0, y: -1), deltaMoves(x: 1, y: 0), deltaMoves(x: 1, y: 1), deltaMoves(x: 1, y: -1), deltaMoves(x: -1, y: 0), deltaMoves(x: -1, y: 1), deltaMoves(x: -1, y: -1)]
    }
}


/*
 
 moveable  = 
 1. up
 2. down
 3. right
 4. left
 5. up-right
 6. up-left
 7. down-right
 8. down-left

original
 while isMoveableTo(board, coordinate: nextMove) {
 moves.append(nextMove)
 if !nextMove.isInsideBoard() {
 break
 }
 }
 














*/





