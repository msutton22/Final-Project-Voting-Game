//
//  EndScreenViewController.swift
//  The Voting
//
//  Created by Maddy Sutton on 4/20/16.
//  Copyright © 2016 Bits Please. All rights reserved.
//

import UIKit

class EndScreenViewController: UIViewController {
    
    @IBOutlet weak var endScreenLabel: UILabel!
     var info = Information()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func startOver(sender: AnyObject) {
        
    }

    func overallWinner() {
        if info.player1won > info.player2won {
            endScreenLabel.text = "\(info.player1)"
        }
    }
}
