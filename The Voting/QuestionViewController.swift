//
//  QuestionViewController.swift
//  The Voting
//
//  Created by rkalvani on 4/7/16.
//  Copyright © 2016 Bits Please. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var playerTurnIdentifierLabel: UILabel!
    @IBOutlet weak var player1Button: UIButton!
    @IBOutlet weak var player2Button: UIButton!
    @IBOutlet weak var player3Button: UIButton!
    @IBOutlet weak var player4button: UIButton!
    @IBOutlet weak var player5Button: UIButton!
    
    var info = Information()
    var playerTurn = 0
    var player1Tapped = 0
    var player2Tapped = 0
    var player3Tapped = 0
    var player4Tapped = 0
    var player5Tapped = 0
    
        override func viewDidLoad() {
        super.viewDidLoad()
            master()
            chooseQuestion()
            player1Button.setTitle(info.player1, forState: UIControlState.Normal)
            player2Button.setTitle(info.player2, forState: UIControlState.Normal)
            player3Button.setTitle(info.player3, forState: UIControlState.Normal)
            player4button.setTitle(info.player4, forState: UIControlState.Normal)
            player5Button.setTitle(info.player5, forState: UIControlState.Normal)
    }
    
    @IBAction func p1NameButton(sender: AnyObject) {
       player1Tapped += 1
        master()
    }
    
    @IBAction func p2NameButton(sender: AnyObject) {
       player2Tapped += 1
        master()
    }
    
    @IBAction func p3NameButton(sender: AnyObject) {
        player3Tapped += 1
        master()
    }

    @IBAction func p4NameButton(sender: AnyObject) {
       player4Tapped += 1
        master()
    }
    
    @IBAction func p5NameButton(sender: AnyObject) {
        player5Tapped += 1
        master()
    }
    
    func master () {
        playerTurn += 1
        playerColor()
        winner()
    }
    
    func playerColor() {
        if playerTurn == 1 {
            view.backgroundColor = UIColor(red: 234/255, green: 53/255, blue: 53/255, alpha: 1.0)
            playerTurnIdentifierLabel.text = "It's \(info.player1)'s turn! Choose a friend, then pass on to the next player."
        }
        else if playerTurn == 2 {
            view.backgroundColor = UIColor(red: 53.0/255.0, green: 155.0/255.0, blue: 220.0/255.0, alpha: 1.0)
            playerTurnIdentifierLabel.text = "It's \(info.player2)'s turn! Choose a friend, then pass on to the next player."
        }
        else if playerTurn == 3 {
            view.backgroundColor = UIColor(red: 226/255, green: 72/255, blue: 193/255, alpha: 1.0);
            playerTurnIdentifierLabel.text = "It's \(info.player3)'s turn! Choose a friend, then pass on to the next player."
        }
        else if playerTurn == 4 {
            view.backgroundColor = UIColor(red: 85/255, green: 249/255, blue: 79/255, alpha: 1.0)
            playerTurnIdentifierLabel.text = "It's \(info.player4)'s turn! Choose a friend, then pass on to the next player."
        }
        else if playerTurn == 5 {
            view.backgroundColor = UIColor(red: 164/255, green: 88/255, blue: 183/255, alpha: 1.0);            playerTurnIdentifierLabel.text = "It's \(info.player5)'s turn! Choose a friend, then pass on to the next player."
        }
    }
  
    func chooseQuestion() {
        let randomIndex = Int(arc4random_uniform(UInt32(info.questions.count)))
        questionLabel.text = "Who would \(info.questions[randomIndex])?"
    }
    
    func results(winner: String) {
        if playerTurn == 6 {
            let alert = UIAlertController(title: winner, message: nil, preferredStyle: .Alert)
            let alertAction = UIAlertAction(title: "Next", style : .Default) { (action) -> Void in
                self.master()
                self.chooseQuestion()
            }
            alert.addAction(alertAction)
            let cancelAction = UIAlertAction(title: "Finish", style: .Default, handler: { (action) in
                self.performSegueWithIdentifier("ToEnd", sender: nil)
            })
            alert.addAction(cancelAction)
            presentViewController(alert, animated: true, completion: nil)
            playerTurn = 0
            player1Tapped = 0
            player2Tapped = 0
            player3Tapped = 0
            player4Tapped = 0
            player5Tapped = 0
        }
    }
    
    func winner() {
        if player1Tapped == player2Tapped
            && player1Tapped == player3Tapped
            && player1Tapped == player4Tapped
            && player1Tapped == player5Tapped
         {
            self.results("You all voted for different people. GET IT TOGETHER!")
        }
        else if player1Tapped == player2Tapped
            && player1Tapped > player3Tapped
            && player1Tapped > player4Tapped
            && player1Tapped > player5Tapped {
            results("Its a tie. No one was thrown under the bus")
        }
        else if player1Tapped == player3Tapped
            && player1Tapped > player2Tapped
            && player1Tapped > player4Tapped
            && player1Tapped > player5Tapped {
                results("Its a tie. No one was thrown under the bus")
        }
        else if player1Tapped == player4Tapped
            && player1Tapped > player3Tapped
            && player1Tapped > player2Tapped
            && player1Tapped > player5Tapped {
                results("Its a tie. No one was thrown under the bus")
        }
        else if player1Tapped == player5Tapped
            && player1Tapped > player3Tapped
            && player1Tapped > player4Tapped
            && player1Tapped > player2Tapped {
            results("Its a tie. No one was thrown under the bus")
        }
        else if player2Tapped == player3Tapped
            && player3Tapped > player1Tapped
            && player3Tapped > player4Tapped
            && player3Tapped > player5Tapped {
            results("Its a tie. No one was thrown under the bus")
        }
        else if player2Tapped == player4Tapped
            && player2Tapped > player1Tapped
            && player2Tapped > player3Tapped
            && player2Tapped > player5Tapped {
            results("Its a tie. No one was thrown under the bus")
        }
        else if player2Tapped == player5Tapped
            && player2Tapped > player1Tapped
            && player2Tapped > player4Tapped
            && player2Tapped > player3Tapped {
            results("Its a tie. No one was thrown under the bus")
        }
        else if player3Tapped == player4Tapped
            && player3Tapped > player1Tapped
            && player3Tapped > player2Tapped
            && player3Tapped > player5Tapped {
            results("Its a tie. No one was thrown under the bus")
        }
        else if player3Tapped == player5Tapped
            && player3Tapped > player1Tapped
            && player3Tapped > player4Tapped
            && player3Tapped > player2Tapped {
            results("Its a tie. No one was thrown under the bus")
        }
        else if player4Tapped == player5Tapped
            && player4Tapped > player1Tapped
            && player4Tapped > player2Tapped
            && player4Tapped > player3Tapped {
                results("Its a tie. No one was thrown under the bus")
        }
        else if player1Tapped > player2Tapped
            && player1Tapped > player3Tapped
            && player1Tapped > player4Tapped
            && player1Tapped > player5Tapped
        {
            info.player1won += 1
            results("\(info.player1) was thrown under the bus")
        }
        else if player2Tapped > player1Tapped
            && player2Tapped > player3Tapped
            && player2Tapped > player4Tapped
            && player2Tapped > player5Tapped {
            info.player2won += 1
            results("\(info.player2) was thrown under the bus")
        }
        else if player3Tapped > player2Tapped
            && player3Tapped > player1Tapped
            && player3Tapped > player4Tapped
            && player3Tapped > player5Tapped {
            info.player3won += 1
            results("\(info.player3) was thrown under the bus")
        }
        else if player4Tapped > player2Tapped
            && player4Tapped > player3Tapped
            && player4Tapped > player1Tapped
            && player4Tapped > player5Tapped {
            info.player4won += 1
            results("\(info.player4) was thrown under the bus")
        }
        else if player5Tapped > player2Tapped
            && player5Tapped > player3Tapped
            && player5Tapped > player4Tapped
            && player5Tapped > player1Tapped {
            info.player5won += 1
            results("\(info.player5) was thrown under the bus")
        }
        else {
                self.results("Its a tie. No one was thrown under the bus.")
            }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as! EndScreenViewController
        dvc.info = self.info
    }
}
