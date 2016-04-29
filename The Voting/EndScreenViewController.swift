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
        overallWinner()
    }

    @IBAction func startOver(sender: AnyObject) {
        performSegueWithIdentifier("EndToStart", sender: self)
        }
    
    func overallWinner() {
        if (info.player1won * 4) > (info.player4won + info.player2won +  info.player3won + info.player5won) {
            endScreenLabel.text = "\(info.player1) was thrown under the bus the most!"
        }
        else if (info.player2won * 4 ) > (info.player1won + info.player4won + info.player3won + info.player5won) {
            endScreenLabel.text = "\(info.player2) was thrown under the bus the most!"
        }
        else if (info.player3won * 4) > (info.player1won + info.player2won + info.player4won + info.player5won) {
            endScreenLabel.text = "\(info.player3) was thrown under the bus the most!"
        }
        else if (info.player4won * 4) > (info.player1won + info.player2won + info.player3won + info.player5won) {
            endScreenLabel.text = "\(info.player4) was thrown under the bus the most!"
        }
        else if (info.player5won * 4) > (info.player1won + info.player2won + info.player3won + info.player4won) {
            endScreenLabel.text = "\(info.player5) was thrown under the bus the most!"
        }
        else {
            endScreenLabel.text = "There were multiple people that were thrown under the bus"
        }

        
    }
}
