//
//  MoveableSquare.swift
//  Chess pre-test
//
//  Created by JPLee on 12/30/16.
//  Copyright © 2016 JPLee. All rights reserved.
//

import UIKit

class MoveableSquare: UIButton {
    var piece: Piece?
    
    init() {
        var frame = CGRect()
        //frame = CGRect(x: c.graphicalCoordinate().y, y: c.graphicalCoordinate().x, width: unit/2, height: unit/2)
        frame = CGRect(x: 0, y: 0, width: unit, height: unit)
        
        super.init(frame: frame)
        self.backgroundColor = UIColor.red
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = CGFloat(unit/2)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


// red ball concept
// they appear on when highlighted
