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
    var playerTurn = 1
    
        override func viewDidLoad() {
        super.viewDidLoad()
            player1Button.setTitle(info.player1, forState: UIControlState.Normal)
            player2Button.setTitle(info.player2, forState: UIControlState.Normal)
            player3Button.setTitle(info.player3, forState: UIControlState.Normal)
            player4button.setTitle(info.player4, forState: UIControlState.Normal)
            player5Button.setTitle(info.player5, forState: UIControlState.Normal)
        chooseQuestion()
        playerColor()
        
    }
    
    @IBAction func p1NameButton(sender: AnyObject) {
        playerColor()
        ++playerTurn
        results()
    }
    
    @IBAction func p2NameButton(sender: AnyObject) {
        playerColor()
        ++playerTurn
        results()
    }
    
    @IBAction func p3NameButton(sender: AnyObject) {
        playerColor()
        ++playerTurn
        results()
    }

    @IBAction func p4NameButton(sender: AnyObject) {
        playerColor()
        ++playerTurn
        results()
    }
    
    @IBAction func p5NameButton(sender: AnyObject) {
        master()
    }
    
    func master () {
        ++playerTurn
        chooseQuestion()
        playerColor()
        ++playerTurn
        results()
    }
    
    func playerColor() {
        
        if playerTurn == 1 {
            view.backgroundColor = UIColor.greenColor()
            playerTurnIdentifierLabel.text = "Player 1's turn"
        }
        else if playerTurn == 2 {
            view.backgroundColor = UIColor.blueColor()
            playerTurnIdentifierLabel.text = "Player 2's turn"
        }
        else if playerTurn == 3 {
            view.backgroundColor = UIColor.redColor()
            playerTurnIdentifierLabel.text = "Player 3's turn"
        }
        else if playerTurn == 4 {
            view.backgroundColor = UIColor.yellowColor()
            playerTurnIdentifierLabel.text = "Player 4's turn"
        }
        else if playerTurn == 5 {
            view.backgroundColor = UIColor.purpleColor()
            playerTurnIdentifierLabel.text = "Player 5's turn"
        }
    }
  
    func chooseQuestion() {
    let randomIndex = Int(arc4random_uniform(UInt32(info.questions.count)))
    questionLabel.text = String(info.questions[randomIndex])
    }
    
    func results() {
        if playerTurn == 6 {
        let alert = UIAlertController(title: "Winner \(info.player2)", message: nil, preferredStyle: .Alert)
            let alertAction = UIAlertAction(title: "Reset", style : .Default) { (action) -> Void in
                self.resetGame()
            }
            
        }
    }
    
    func resetGame() {
        playerTurn = 1
        view.backgroundColor = UIColor.whiteColor()
        
    }
    
 }


