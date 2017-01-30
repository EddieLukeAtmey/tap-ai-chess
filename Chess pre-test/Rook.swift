//
//  Rook.swift
//  Chess pre-test
//
//  Created by JPLee on 11/13/16.
//  Copyright © 2016 JPLee. All rights reserved.
//

import Foundation

class Rook: Piece {
    
    init(coordinate: Coordinate, side: Side) {
        super.init(coordinate: coordinate, side: side, type: .rook)
        self.slidable = true
        self.collectionOfDeltaMoves = [deltaMoves(x: 0, y: -1), deltaMoves(x: 0, y: 1), deltaMoves(x: 1, y: 0), deltaMoves(x: -1, y: 0)]
    }
    
    
//    override func possibleMovesInBoard(board: Board) -> [Coordinate] {
//        
////        var moveTrue: [Bool] = [true, true, true, true]
//        var moves: [Coordinate] = []
//        var delta = -1, distance = -1
//        var nextMove: Coordinate = Coordinate(row: coordinate.row + distance, column: coordinate.column)
//        //up
//        while isMoveableTo(board, coordinate: nextMove) {
//            moves.append(nextMove)
//            distance = distance + delta
//            if !(board.pieces[nextMove.row][nextMove.column] == nil) {
//                break
//            }
//            nextMove = Coordinate(row: coordinate.row + distance, column: coordinate.column)
//            if !nextMove.isInsideBoard(){
//                break
//            }
//            
//        }
//        
//        delta = 1
//        distance = 1
//        nextMove = Coordinate(row: coordinate.row + distance, column: coordinate.column)
//        while isMoveableTo(board, coordinate: nextMove) {
//            moves.append(nextMove)
//            distance = distance + delta
//            if board.pieces[nextMove.row][nextMove.column] != nil {
//                break
//            }
//            nextMove = Coordinate(row: coordinate.row + distance, column: coordinate.column)
//
//            if !nextMove.isInsideBoard() {
//                break
//            }
//        }
//        
//        delta = -1
//        distance = -1
//        nextMove = Coordinate(row: coordinate.row, column: coordinate.column + distance)
//        while isMoveableTo(board, coordinate: nextMove) {
//            moves.append(nextMove)
//            distance = distance + delta
//            if !(board.pieces[nextMove.row][nextMove.column] == nil) {
//                break
//            }
//            nextMove = Coordinate(row: coordinate.row, column: coordinate.column + distance)
//            if !nextMove.isInsideBoard() {
//                break
//            }
//        }
//        
//        delta = 1
//        distance = 1
//        nextMove = Coordinate(row: coordinate.row, column: coordinate.column + distance)
//        while isMoveableTo(board, coordinate: nextMove) {
//            moves.append(nextMove)
//            distance = distance + delta
//            if !(board.pieces[nextMove.row][nextMove.column] == nil) {
//                break
//            }
//            nextMove = Coordinate(row: coordinate.row, column: coordinate.column + distance)
//            if !nextMove.isInsideBoard() {
//                break
//            }
//        }
//        
////        var nextMove: Coordinate
////        repeat {
////            nextMove = Coordinate(row: coordinate.row + distance, column: coordinate.column)
////            if isMoveableTo(board, coordinate: nextMove) {
////                moves.append(nextMove)
////                distance = distance + deltaR
////            }
////        } while true
//        
//        return moves
//    }


}

// Homework:
// 1. Finish possibleMovesInBoard for Rook, Bishop
// 2. Decode FEN string (initial state only) with further instructions shared by Duc








