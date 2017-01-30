//
//  Board.swift
//  Chess pre-test
//
//  Created by JPLee on 11/13/16.
//  Copyright © 2016 JPLee. All rights reserved.
//

import Foundation

class Board {
    var pieces: [[Piece?]] = []
    var halfMoveCount: Int = 0
    var fullMoveCount: Int = 0
    
    // Read more in Swift tutorial (Maybe class)
    static let initialPosition: String = "rnbqkbnr/pppppppp/8/2B5/8/1p6/8/RNBQKBNR w KQkq - 0 0"
    
    init(from position: String) {
        for _ in 0...7 {
            let row = [Piece?](repeating: nil, count: 8)
            pieces.append(row)
        }
        
        // TODO: Load the pieces from FEN string to the 2-dimention matrix
        let components = position.components(separatedBy: " ")
        let rows = components[0].components(separatedBy: "/")
        
        var row = 0, col = 0
        for aRow in rows {
            // Fill in the squares on the same row starting from column 0
            col = 0
            for i in aRow.characters {
                if ["r","n","b","q","k","p","R", "N", "B", "Q", "K", "P"].contains(i) {
                    pieces[row][col] = Piece.createChildPiece(coordinate: Coordinate(row: row, column: col), side: i.pieceSide(), type: i.pieceType()!)
                    col = col + 1
                } else {
                    var numberOfBlankSquares =  Int(String(i))
                    for _ in 0..<numberOfBlankSquares! {
                        pieces[row][col] = nil
                        col = col + 1
                    }
                }
            }
            row = row + 1
        }
    }
    
    func makeMove(piece: Piece, target: Coordinate) {
        if piece.possibleMovesInBoard(board: self).contains(target) {
            // Put the piece at the target coordinate
            pieces[target.row][target.column] = piece
            
            // Remove the piece from current coordinate
            pieces[piece.coordinate.row][piece.coordinate.column] = nil
            
            // Update the piece's coordinate
            piece.coordinate = target
        }
    }

}



/* ToDo
 write a method to reproduce the fan string from current status
 
 testMove
 move
 
 */








