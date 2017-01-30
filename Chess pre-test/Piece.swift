//
//  Piece.swift
//  Chess pre-test
//
//  Created by JPLee on 11/13/16.
//  Copyright © 2016 JPLee. All rights reserved.
//

import Foundation

extension Character{
    func pieceType() -> PieceType? {
        switch String(self).lowercased() {
        case "p":
            return .pawn
        case "k":
            return .king
        case "q":
            return .queen
        case "b":
            return .bishop
        case "n":
            return .knight
        case "r":
            return .rook
        default:
            return nil
        }
    }
    
    func pieceSide() -> Side{
        if String(self).unicodeScalars.first!.value > 64 && String(self).unicodeScalars.first!.value < 91{
            return .white
        } else {
            return .black
        }
    }
        // Check this:
        // return String(self).unicodeScalars.first!.value > 96 ? .black : .white
}


func ==(lhs: Coordinate, rhs: Coordinate) -> Bool {
    return lhs.row == rhs.row && lhs.column == rhs.column
}


struct Coordinate: Equatable {
    var row: Int
    var column: Int
    
    func isInsideBoard() -> Bool {
        return row <= 7 && row >= 0 && column <= 7 && column >= 0
    }

}

struct deltaMoves {
    var x: Int
    var y: Int
}


enum Side {
    case black, white
}
//https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Enumerations.html

enum PieceType {
    case pawn, rook, knight, bishop, queen, king
}

class Piece {
    var coordinate: Coordinate
    var side: Side
    var type: PieceType
    var collectionOfDeltaMoves: [deltaMoves] = []
    var slidable: Bool = false

    init(coordinate: Coordinate, side: Side, type: PieceType){
        self.coordinate = coordinate
        self.side = side
        self.type = type
        self.collectionOfDeltaMoves = []
    }
    
    static func createChildPiece(coordinate: Coordinate, side: Side, type: PieceType) -> Piece {
        switch type {
        case .pawn:
            return Pawn(coordinate: coordinate, side: side)
        case .king:
            return King(coordinate: coordinate, side: side)
        case .queen:
            return Queen(coordinate: coordinate, side: side)
        case .bishop:
            return Bishop(coordinate: coordinate, side: side)
        case .rook:
            return Rook(coordinate: coordinate, side: side)
        case .knight:
            return Knight(coordinate: coordinate, side: side)
        }
    }
    
    func possibleMovesInBoard(board: Board) -> [Coordinate] {
        var move: [Coordinate] = []
        
        for var change in collectionOfDeltaMoves {
            
            var nextMove: Coordinate = Coordinate(row: coordinate.row + change.x, column: coordinate.column + change.y)
            
            while isMoveableTo(board: board, coordinate: nextMove) {
                move.append(nextMove)
                if !(board.pieces[nextMove.row][nextMove.column] == nil) {
                    break
                }
                if self.slidable == true {
                    if change.x < 0 {
                        change.x = change.x - 1
                    } else if change.x > 0 {
                        change.x = change.x + 1
                    }
                    if change.y < 0 {
                        change.y = change.y - 1
                    } else if change.y > 0 {
                        change.y = change.y + 1
                    }
                    nextMove = Coordinate(row: coordinate.row + change.x, column: coordinate.column + change.y)
                } else {
                    break
                }
            }
        }
        return move
    }

    func isMoveableTo(board: Board, coordinate c: Coordinate) -> Bool {
        return c.isInsideBoard() && (board.pieces[c.row][c.column] == nil || board.pieces[c.row][c.column]?.side != self.side)
    }
 
//    func checkIfMoved(board: Board, coordinate c: Coordinate) -> Bool {
//        if board.pieces.[c.row][c.column]! == Board(from: Board.initialPosition).pieces[c.row][c.column]!{
//            return true
//        }
//    }
    
}
