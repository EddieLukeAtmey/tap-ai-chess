//
//  Square.swift
//  Chess pre-test
//
//  Created by JPLee on 12/18/16.
//  Copyright © 2016 JPLee. All rights reserved.
//

import UIKit

class Square: UIButton{
    var piece: Piece?
    var c: Coordinate
    var moveableMark: MoveableSquare?
    var heighlight: Bool = false
    
    init(c: Coordinate, piece: Piece?) {
        self.piece = piece
        self.heighlight = false
        self.c = c
        let frame = CGRect(x: c.graphicalCoordinate().y, y: c.graphicalCoordinate().x, width: unit, height: unit)
        
        super.init(frame: frame)
        if (c.row + c.column) % 2 == 1{
            self.backgroundColor = UIColor.brown
        } else {
            self.backgroundColor = UIColor.white
        }
        self.layer.borderWidth = 2.0
        self.layer.borderColor = UIColor.black.cgColor
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func highlight() {
        layer.borderColor = UIColor.red.cgColor
        backgroundColor = UIColor.yellow
        
        moveableMark = MoveableSquare()
        addSubview(moveableMark!)
        //moveableMark!.addTarget(self, action: #selector(GameViewController.pieceMove(to:)), for: .touchUpInside)
    }
    
    func unhighlight() {
        layer.borderColor = UIColor.black.cgColor
        if (c.row + c.column) % 2 == 1{
            backgroundColor = UIColor.brown
        } else {
            backgroundColor = UIColor.white
        }
        moveableMark?.removeFromSuperview()
        
    }

}

//frame
//backcolor
//piece?
// if touchded piece{
//highlight itself}
