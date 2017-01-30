//
//  Bishop.swift
//  Chess pre-test
//
//  Created by JPLee on 11/22/16.
//  Copyright © 2016 JPLee. All rights reserved.
//

import Foundation
class Bishop: Piece {
    
    init(coordinate: Coordinate, side: Side) {
        super.init(coordinate: coordinate, side: side, type: .bishop)
        self.slidable = true
        self.collectionOfDeltaMoves = [ deltaMoves(x: 1, y: 1), deltaMoves(x: 1, y: -1), deltaMoves(x: -1, y: 1), deltaMoves(x: -1, y: -1)]
    }
    
   }
