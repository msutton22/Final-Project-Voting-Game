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
    
    var player1Tapped = 0
    var player2Tapped = 0
    var player3Tapped = 0
    var player4Tapped = 0
    var player5Tapped = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player1Tapped = info.player1won
        player2Tapped = info.player2won
        player3Tapped = info.player3won
        player4Tapped = info.player4won
        player5Tapped = info.player5won
        overallWinner()
    }

    @IBAction func startOver(sender: AnyObject) {
        performSegueWithIdentifier("EndToStart", sender: self)
        }
    
    func overallWinner() {
        if player1Tapped > player2Tapped
            && player1Tapped > player3Tapped
            && player1Tapped > player4Tapped
            && player1Tapped > player5Tapped {
            endScreenLabel.text = "\(info.player1) was thrown under the bus!"
        }
        else if  player2Tapped > player1Tapped
            && player2Tapped > player3Tapped
            && player2Tapped > player4Tapped
            && player2Tapped > player5Tapped {
            endScreenLabel.text = "\(info.player2) was thrown under the bus!"
        }
        else if player3Tapped > player2Tapped
            && player3Tapped > player1Tapped
            && player3Tapped > player4Tapped
            && player3Tapped > player5Tapped {
            endScreenLabel.text = "\(info.player3) was thrown under the bus!"
        }
        else if  player4Tapped > player2Tapped
            && player4Tapped > player3Tapped
            && player4Tapped > player1Tapped
            && player4Tapped > player5Tapped {
            endScreenLabel.text = "\(info.player4) was thrown under the bus!"
        }
        else if player5Tapped > player2Tapped
            && player5Tapped > player3Tapped
            && player5Tapped > player4Tapped
            && player5Tapped > player1Tapped {
            endScreenLabel.text = "\(info.player5) was thrown under the bus!"
        }
        else {
            endScreenLabel.text = "You were all thrown under the bus together!"
        }
    }
}
