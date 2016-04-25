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
       master()
      ++player1Tapped
      ++info.player1won
    }
    
    @IBAction func p2NameButton(sender: AnyObject) {
       master()
       ++player2Tapped
        ++info.player2won
    }
    
    @IBAction func p3NameButton(sender: AnyObject) {
        master()
        ++player3Tapped
        ++info.player3won
    }

    @IBAction func p4NameButton(sender: AnyObject) {
       master()
        ++player4Tapped
        ++info.player4won
    }
    
    @IBAction func p5NameButton(sender: AnyObject) {
        master()
        ++player5Tapped
        ++info.player5won
    }
    
    func master () {
        ++playerTurn
        playerColor()
        winner()
    }
    
    func playerColor() {
        
        if playerTurn == 1 {
            view.backgroundColor = UIColor.redColor()
            playerTurnIdentifierLabel.text = "It's \(info.player1)'s turn to choose a friend, then pass on to the next player."
        }
        else if playerTurn == 2 {
            view.backgroundColor = UIColor.blueColor()
            playerTurnIdentifierLabel.text = "It's \(info.player2)'s turn to choose a friend, then pass on to the next player."
        }
        else if playerTurn == 3 {
            view.backgroundColor = UIColor.magentaColor()
            playerTurnIdentifierLabel.text = "It's \(info.player3)'s turn to choose a friend, then pass on to the next player."
        }
        else if playerTurn == 4 {
            view.backgroundColor = UIColor.greenColor()
            playerTurnIdentifierLabel.text = "It's \(info.player4)'s turn to choose a friend, then pass on to the next player."
        }
        else if playerTurn == 5 {
            view.backgroundColor = UIColor.purpleColor()
            playerTurnIdentifierLabel.text = "It's \(info.player5)'s turn to choose a friend, then pass on to the next player."
        }
    }
  
    func chooseQuestion() {
    let randomIndex = Int(arc4random_uniform(UInt32(info.questions.count)))
    questionLabel.text = "Who would \(info.questions[randomIndex])?"
    }
    
    func results(winner: String) {
        if playerTurn == 6 {
            playerTurn = 0
            player1Tapped = 0
            player2Tapped = 0
            player3Tapped = 0
            player4Tapped = 0
            player5Tapped = 0
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
        }
    }

    func winner() {
        
        if player1Tapped == player2Tapped && (player1Tapped * 3) > (player3Tapped + player4Tapped + player5Tapped) {
            info.noPlayerWon == ++info.noPlayerWon
            results("Its a tie. No one was thrown under the bus")
        }
        else if player1Tapped == player3Tapped && (player1Tapped * 3) > (player2Tapped + player4Tapped + player5Tapped) {
            info.noPlayerWon == ++info.noPlayerWon
            results("Its a tie. No one was thrown under the bus")
        }
        else if player1Tapped == player4Tapped && (player1Tapped * 3) > (player2Tapped + player3Tapped + player5Tapped) {
            info.noPlayerWon == ++info.noPlayerWon
            results("Its a tie. No one was thrown under the bus")
        }
        else if player1Tapped == player5Tapped && (player1Tapped * 3) > (player2Tapped + player3Tapped + player4Tapped){
            info.noPlayerWon == ++info.noPlayerWon
            results("Its a tie. No one was thrown under the bus")
        }
        else if player2Tapped == player3Tapped && (player2Tapped * 3) > (player1Tapped + player4Tapped + player5Tapped) {
            info.noPlayerWon == ++info.noPlayerWon
            results("Its a tie. No one was thrown under the bus")
        }
        else if player2Tapped == player4Tapped && (player2Tapped * 3) > (player1Tapped + player3Tapped + player5Tapped) {
            info.noPlayerWon == ++info.noPlayerWon
            results("Its a tie. No one was thrown under the bus")
        }
        else if player2Tapped == player5Tapped && (player2Tapped * 3) > (player1Tapped + player4Tapped + player3Tapped) {
            info.noPlayerWon == ++info.noPlayerWon
            results("Its a tie. No one was thrown under the bus")
        }
        else if player3Tapped == player4Tapped && (player3Tapped * 3) > (player1Tapped + player2Tapped + player5Tapped) {
            info.noPlayerWon == ++info.noPlayerWon
            results("Its a tie. No one was thrown under the bus")
        }
        else if player3Tapped == player5Tapped && (player3Tapped * 3) > (player1Tapped + player4Tapped + player2Tapped) {
            info.noPlayerWon == ++info.noPlayerWon
            results("Its a tie. No one was thrown under the bus")
        }
        else if player4Tapped == player5Tapped && (player4Tapped * 3) > (player1Tapped + player2Tapped + player3Tapped) {
            info.noPlayerWon == ++info.noPlayerWon
            results("Its a tie. No one was thrown under the bus")
        }

       else if (player1Tapped * 4) > (player2Tapped + player3Tapped + player4Tapped + player5Tapped)
        {
         results("\(info.player1)")
        }
        else if (player2Tapped * 4) > (player1Tapped + player3Tapped + player4Tapped + player5Tapped) {
         results("\(info.player2)")
        }
        else if (player3Tapped * 4) > (player2Tapped + player1Tapped + player4Tapped + player5Tapped) {
            results("\(info.player3)")
        }
        else if (player4Tapped * 4) > (player1Tapped & player2Tapped & player3Tapped & player5Tapped) {
            results("\(info.player4)")
      }
        else if (player5Tapped * 4) > (player1Tapped + player2Tapped + player2Tapped + player4Tapped) {
            results("\(info.player5)")
      }
    }
    
   
}
