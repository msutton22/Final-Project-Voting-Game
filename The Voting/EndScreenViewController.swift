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
        if info.noPlayerWon > (info.player1won + info.player2won + info.player3won + info.player4won + info.player5won)
        {
            endScreenLabel.text = "No one was thrown under the bus"
        }
        else if info.player1won  > (info.player4won + info.player2won +  info.player3won + info.player5won) {
            endScreenLabel.text = "\(info.player1) is the person that is most likely to be thrown under the bus"
        }
        else if info.player2won  > (info.player1won + info.player4won + info.player3won + info.player5won) {
            endScreenLabel.text = "\(info.player2) is the person that is most likely to be thrown under the bus"
        }
        else if info.player3won > (info.player1won + info.player2won + info.player4won + info.player5won) {
            endScreenLabel.text = "\(info.player3)is the person that is most likely to be thrown under the bus"
        }
        else if info.player4won > (info.player1won + info.player2won + info.player3won + info.player5won) {
            endScreenLabel.text = "\(info.player4) is the person that is most likely to be thrown under the bus"
        }
        else if info.player5won  > (info.player1won + info.player2won + info.player3won + info.player4won) {
            endScreenLabel.text = "\(info.player5) is the person that is most likely to be thrown under the bus"
        }
    }
}
