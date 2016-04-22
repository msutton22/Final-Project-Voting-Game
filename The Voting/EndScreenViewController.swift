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

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as! ViewController
        dvc.info = self.info
    }
    func overallWinner() {
        if info.player1won == info.player2won && (info.player1won * 3) > (info.player3won + info.player4won + info.player5won) {
            endScreenLabel.text = "Its a tie. No one wanted to throw someone under the bus"
        }
        else if info.player1won == info.player3won && (info.player1won * 3) > (info.player2won + info.player4won + info.player5won) {
            endScreenLabel.text = "Its a tie. No one wanted to throw someone under the bus"
        }
        else if info.player1won == info.player4won && (info.player1won * 3) > (info.player2won + info.player3won + info.player5won) {
            endScreenLabel.text = "Its a tie. No one wanted to throw someone under the bus"
        }
        else if info.player1won == info.player5won && (info.player1won * 3) > (info.player2won + info.player3won + info.player4won){
            endScreenLabel.text = "Its a tie. No one wanted to throw someone under the bus"        }
        else if info.player2won == info.player3won && (info.player2won * 3) > (info.player1won + info.player4won + info.player5won) {
            endScreenLabel.text = "Its a tie. No one wanted to throw someone under the bus"
        }
        else if info.player2won == info.player4won && (info.player2won * 3) > (info.player1won + info.player3won + info.player5won) {
            endScreenLabel.text = "Its a tie. No one wanted to throw someone under the bus"
        }
        else if info.player2won == info.player5won && (info.player2won * 3) > (info.player1won + info.player4won + info.player3won) {
            endScreenLabel.text = "Its a tie. No one wanted to throw someone under the bus"
        }
        else if info.player3won == info.player4won && (info.player3won * 3) > (info.player1won + info.player2won + info.player5won) {
            endScreenLabel.text = "Its a tie. No one wanted to throw someone under the bus"
        }
        else if info.player3won == info.player5won && (info.player3won * 3) > (info.player1won + info.player4won + info.player2won) {
            endScreenLabel.text = "Its a tie. No one wanted to throw someone under the bus"
        }
        else if info.player4won == info.player5won && (info.player4won * 3) > (info.player1won + info.player2won + info.player3won) {
            endScreenLabel.text = "Its a tie. No one wanted to throw someone under the bus"
        }
            
        else if (info.player1won * 4) > (info.player4won + info.player2won + info.player3won + info.player5won) {
            endScreenLabel.text = "Player 1 is the person that is most likely to be thrown under the bus"
        }
        else if (info.player2won * 4) > (info.player1won + info.player4won + info.player3won + info.player5won) {
            endScreenLabel.text = "Player 2 is the person that is most likely to be thrown under the bus"
        }
        else if (info.player3won * 4) > (info.player1won + info.player2won + info.player4won + info.player5won) {
            endScreenLabel.text = "Player 3 is the person that is most likely to be thrown under the bus"
        }
        else if (info.player4won * 4) > (info.player1won + info.player2won + info.player3won + info.player5won) {
            endScreenLabel.text = "Player 4 is the person that is most likely to be thrown under the bus"
        }
        else if (info.player5won * 4) > (info.player1won + info.player2won + info.player3won + info.player4won) {
            endScreenLabel.text = "Player 5 is the person that is most likely to be thrown under the bus"
        }
    }

    
   }
