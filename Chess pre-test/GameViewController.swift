//
//  GameViewController.swift
//  Chess pre-test
//
//  Created by JPLee on 12/18/16.
//  Copyright © 2016 JPLee. All rights reserved.
//

import UIKit

extension Coordinate {
    func graphicalCoordinate() -> (x: CGFloat, y: CGFloat) {
        return (x: sh/2+CGFloat(self.row - 4) * unit, y:  CGFloat(self.column)*unit)
    }
}

class GameViewController: UIViewController {
    var highlightOn: Bool = false
    var chesstable = [[Square]]()
    let board = Board(from: Board.initialPosition)
    var selectedSquare: Square?
  
// startButton is the start button on Pvp and Ai viewcontroller's Setting
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildChessTable()
        refreshChessTable()
        
        
    }
    
    func buildChessTable() {
        for row in 0...7{
            var aRow = [Square]()
            for column in 0...7{
                let square = Square(c: Coordinate(row: row, column: column), piece: nil)
                aRow.append(square)
                self.view.addSubview(square)
                square.addTarget(self, action: #selector(GameViewController.squareTouched(square:)), for: .touchUpInside)
            }
            chesstable.append(aRow)
        }
        
    }
    
    func refreshChessTable() {
            for row in 0...7 {
                for column in 0...7 {
                    let square = chesstable[row][column]
                    square.piece = self.board.pieces[row][column]
                    
                    if square.piece == nil {
                        square.setBackgroundImage(nil, for: .normal)
                    }                    
                    if square.piece?.type == .pawn && square.piece?.side == .black {
                        square.setBackgroundImage(UIImage(named: "imePawn")! as UIImage, for: .normal)
                    }
                    if square.piece?.type == .rook && square.piece?.side == .black {
                        square.setBackgroundImage(UIImage(named: "imeRook")! as UIImage, for: .normal)
                    }
                    if square.piece?.type == .bishop && square.piece?.side == .black {
                        square.setBackgroundImage(UIImage(named: "imeBishop")! as UIImage, for: .normal)
                    }
                    if square.piece?.type == .knight && square.piece?.side == .black {
                        square.setBackgroundImage(UIImage(named: "imeKnight")! as UIImage, for: .normal)
                    }
                    if square.piece?.type == .queen && square.piece?.side == .black {
                        square.setBackgroundImage(UIImage(named: "imeQueen")! as UIImage, for: .normal)
                    }
                    if square.piece?.type == .king && square.piece?.side == .black {
                        square.setBackgroundImage(UIImage(named: "imeKing")! as UIImage, for: .normal)
                    }
                    if square.piece?.type == .pawn && square.piece?.side == .white {
                        square.setBackgroundImage(UIImage(named: "imeWhitePawn")! as UIImage, for: .normal)
                    }
                    if square.piece?.type == .rook && square.piece?.side == .white {
                        square.setBackgroundImage(UIImage(named: "imeWhiteRook")! as UIImage, for: .normal)
                    }
                    if square.piece?.type == .bishop && square.piece?.side == .white {
                        square.setBackgroundImage(UIImage(named: "imeWhiteBishop")! as UIImage, for: .normal)
                    }
                    if square.piece?.type == .knight && square.piece?.side == .white {
                        square.setBackgroundImage(UIImage(named: "imeWhiteKnight")! as UIImage, for: .normal)
                    }
                    if square.piece?.type == .queen && square.piece?.side == .white {
                        square.setBackgroundImage(UIImage(named: "imeWhiteQueen")! as UIImage, for: .normal)
                    }
                    if square.piece?.type == .king && square.piece?.side == .white {
                        square.setBackgroundImage(UIImage(named: "imeWhiteKing")! as UIImage, for: .normal)
                    }
                    
                    square.unhighlight()
                }
                
            }
            highlightOn = false
    }
    
    
    func squareTouched(square: Square) {
        //propagation / event escalation
        if !(square.piece == nil) {
             if highlightOn == false {
                square.layer.borderColor = UIColor.red.cgColor
                square.backgroundColor = UIColor.yellow
                highlightOn = true
                selectedSquare = square
                
                // show possible moves
                for number in (square.piece?.possibleMovesInBoard(board: board))! {
                    chesstable[number.row][number.column].highlight()
                }
                
            } else {
                square.unhighlight()
                for number in (square.piece?.possibleMovesInBoard(board: board))! {
                    chesstable[number.row][number.column].unhighlight()
                }
                highlightOn = false
            }
        } else {
            if highlightOn == true && square.moveableMark != nil && square != selectedSquare {
                pieceMove(to: square)
            }
        }
    }
    
    func pieceMove(to: Square) {
        board.makeMove(piece: selectedSquare!.piece!, target: to.c)
        to.piece = selectedSquare?.piece
        selectedSquare?.piece = nil
        refreshChessTable()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
