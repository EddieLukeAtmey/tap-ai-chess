//
//  PvpViewController.swift
//  Chess pre-test
//
//  Created by JPLee on 12/18/16.
//  Copyright © 2016 JPLee. All rights reserved.
//

import UIKit

class PvpViewController: UIViewController {
    
    @IBAction func rotation(sender: AnyObject) {
    }
    @IBAction func moveTimer(sender: AnyObject) {
    }
    @IBAction func gameTimer(sender: AnyObject) {
    }
    
//    var isAllowed: Bool = false
    
    @IBAction func startGame(sender: AnyObject) {
//        isAllowed = true
//        performSegueWithIdentifier("startGameSegue", sender: self)
    }
//    
//    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
//        return isAllowed
//    }
//    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //        let board = Board(from: Board.initialPosition)
        //
        //        let moves = board.pieces[0][1]?.possibleMovesInBoard(board)
        //        print(moves)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
