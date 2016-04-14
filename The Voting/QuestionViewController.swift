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
    var loopCounter = 0
    var playerArray : [Int] = []
    
        override func viewDidLoad() {
        super.viewDidLoad()
            master()
            player1Button.setTitle(info.player1, forState: UIControlState.Normal)
            player2Button.setTitle(info.player2, forState: UIControlState.Normal)
            player3Button.setTitle(info.player3, forState: UIControlState.Normal)
            player4button.setTitle(info.player4, forState: UIControlState.Normal)
            player5Button.setTitle(info.player5, forState: UIControlState.Normal)
    }
    
    @IBAction func p1NameButton(sender: AnyObject) {
       master()
      ++player1Tapped
    }
    
    @IBAction func p2NameButton(sender: AnyObject) {
       master()
       ++player2Tapped
    }
    
    @IBAction func p3NameButton(sender: AnyObject) {
        master()
        ++player3Tapped
    }

    @IBAction func p4NameButton(sender: AnyObject) {
       master()
        ++player4Tapped
    }
    
    @IBAction func p5NameButton(sender: AnyObject) {
        master()
        ++player5Tapped
    }
    
    func master () {
        ++playerTurn
        playerColor()
        winner()
    }
    
    func playerColor() {
        
        if playerTurn == 1 {
            view.backgroundColor = UIColor.greenColor()
            playerTurnIdentifierLabel.text = "It's \(info.player1)'s turn to choose a friend, then pass on to the next player."
        }
        else if playerTurn == 2 {
            view.backgroundColor = UIColor.blueColor()
            playerTurnIdentifierLabel.text = "It's \(info.player2)'s turn to choose a friend, then pass on to the next player."
        }
        else if playerTurn == 3 {
            view.backgroundColor = UIColor.redColor()
            playerTurnIdentifierLabel.text = "It's \(info.player3)'s turn to choose a friend, then pass on to the next player."
        }
        else if playerTurn == 4 {
            view.backgroundColor = UIColor.yellowColor()
            playerTurnIdentifierLabel.text = "It's \(info.player4)'s turn to choose a friend, then pass on to the next player."
        }
        else if playerTurn == 5 {
            view.backgroundColor = UIColor.purpleColor()
            playerTurnIdentifierLabel.text = "It's \(info.player5)'s turn to choose a friend, then pass on to the next player."
        }
    }
  
    func chooseQuestion() {
    let randomIndex = Int(arc4random_uniform(UInt32(info.questions.count)))
    questionLabel.text = "Who is most likely to\(info.questions[randomIndex])"
        
    }
    func results(winner: String) {
        if playerTurn == 6 {
            let alert = UIAlertController(title: winner, message: nil, preferredStyle: .Alert)
            let alertAction = UIAlertAction(title: "Reset", style : .Default) { (action) -> Void in
                self.playerTurn = 0
                self.master()
            }
            alert.addAction(alertAction)
            presentViewController(alert, animated: true, completion: nil)
        }
    }

    
    func winner() {
        playerArray.append(player1Tapped)
        playerArray.append(player2Tapped)
        playerArray.append(player3Tapped)
        playerArray.append(player4Tapped)
        playerArray.append(player5Tapped)
        
        for player in playerArray {
            
        }
        
        if player1Tapped > player2Tapped & player3Tapped & player4Tapped & player5Tapped {
         results("\(info.player1) is the most likely to \(questionLabel.text!)")
        }
        else if player2Tapped > player1Tapped & player3Tapped & player4Tapped & player5Tapped{
         results("\(info.player2) is the most likely to \(questionLabel.text!)")
        }
        else if player3Tapped > player2Tapped & player1Tapped & player4Tapped & player5Tapped{
            results("\(info.player3) is the most likely to \(questionLabel.text!)")
        }
        else if player4Tapped > player1Tapped & player2Tapped & player3Tapped & player5Tapped{
            results("\(info.player4) is the most likely to \(questionLabel.text!)")
      }
        else if player5Tapped > player1Tapped & player2Tapped & player2Tapped & player4Tapped{
            results("\(info.player5) is the most likely to \(questionLabel.text!)")
      }
        else {
            results("Its a tie. No one wanted to throw someone under the bus")
        }
  }
}
