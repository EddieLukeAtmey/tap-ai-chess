//
//  Knight.swift
//  Chess pre-test
//
//  Created by JPLee on 11/21/16.
//  Copyright © 2016 JPLee. All rights reserved.
//

import Foundation

class Knight: Piece {
    
    init(coordinate: Coordinate, side: Side) {
        super.init(coordinate: coordinate, side: side, type: .knight)
        self.collectionOfDeltaMoves = [deltaMoves(x: 1, y: 2), deltaMoves(x: 2, y: 1), deltaMoves(x: 1, y: -2), deltaMoves(x: 2, y: -1), deltaMoves(x: -1, y: 2), deltaMoves(x: -2, y: 1), deltaMoves(x: -1, y: -2), deltaMoves(x: -2, y: -1)]
    }

}


/*
 
 moveable  =
 1. (-2, -1)
 2. (-2, 1)
 3. (2, -1)
 4. (2, 1)
 5. (-1, -2)
 6. (-1, 2)
 7. (1, -2)
 8. (1, 2)
 
 
 
 
 
 
 */
