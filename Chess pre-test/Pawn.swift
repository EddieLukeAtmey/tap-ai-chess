//
//  Pawn.swift
//  Chess pre-test
//
//  Created by JPLee on 11/22/16.
//  Copyright © 2016 JPLee. All rights reserved.
//

import Foundation

class Pawn: Piece {
    
    init(coordinate: Coordinate, side: Side) {
        super.init(coordinate: coordinate, side: side, type: .pawn)
        
    }
    
    
    
    override func possibleMovesInBoard(board: Board) -> [Coordinate] {
        var moves: [Coordinate] = []
        
        //up
        var delta = -1, distance = -1
        var nextMove: Coordinate = Coordinate(row: coordinate.row + distance, column: coordinate.column)
        if isMoveableTo(board: board, coordinate: nextMove) {
            moves.append(nextMove)
        }
        return moves
    }
}
