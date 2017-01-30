//
//  Queen.swift
//  Chess pre-test
//
//  Created by JPLee on 11/22/16.
//  Copyright © 2016 JPLee. All rights reserved.
//

import Foundation

class Queen: Piece {
    
    init(coordinate: Coordinate, side: Side) {
        super.init(coordinate: coordinate, side: side, type: .queen)
        self.slidable = true
        self.collectionOfDeltaMoves = [deltaMoves(x: 0, y: 1), deltaMoves(x: 0, y: -1), deltaMoves(x: 1, y: 0), deltaMoves(x: 1, y: 1), deltaMoves(x: 1, y: -1), deltaMoves(x: -1, y: 0), deltaMoves(x: -1, y: 1), deltaMoves(x: -1, y: -1)]
    }
    
}







