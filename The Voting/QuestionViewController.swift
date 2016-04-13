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
    
        override func viewDidLoad() {
        super.viewDidLoad()
            questionLabel.text = String(info.questions)
            player1Button.setTitle("jone", forState: UIControlState.Normal)

    }
    
    @IBAction func p1NameButton(sender: AnyObject) {
        master()
    }
    
    @IBAction func p2NameButton(sender: AnyObject) {
        master()
    }
    
    @IBAction func p3NameButton(sender: AnyObject) {
        master()
    }

    @IBAction func p4NameButton(sender: AnyObject) {
        master()
    }
    
    @IBAction func p5NameButton(sender: AnyObject) {
        master()
    }
    
    func master () {
        ++playerTurn
        chooseQuestion()
        playerColor()
        
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
    questionLabel.text = String(info.questions[randomIndex])
    }
    
}


 

