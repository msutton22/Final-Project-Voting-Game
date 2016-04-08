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
    
        override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = String(info.questions)
        player1Button.setTitle(info.player1, forState: UIControlState.Normal)
        player2Button.setTitle(info.player2, forState: UIControlState.Normal)
        player3Button.setTitle(info.player3, forState: UIControlState.Normal)
        player4button.setTitle(info.player4, forState: UIControlState.Normal)
        player5Button.setTitle(info.player5, forState: UIControlState.Normal)
    }
    
    @IBAction func p1NameButton(sender: AnyObject) {
        playerColor()
    }
    
    @IBAction func p2NameButton(sender: AnyObject) {
        playerColor()
    }
    
    @IBAction func p3NameButton(sender: AnyObject) {
        playerColor()
    }

    @IBAction func p4NameButton(sender: AnyObject) {
        playerColor()
    }
    
    @IBAction func p5NameButton(sender: AnyObject) {
        playerColor()
    }
    
    func playerColor() {
        if playerTurnIdentifierLabel.text == info.player1 {
            view.backgroundColor = UIColor.greenColor()
        }
        else if playerTurnIdentifierLabel.text == info.player2 {
            view.backgroundColor = UIColor.blueColor()
        }
        else if playerTurnIdentifierLabel.text == info.player3 {
            view.backgroundColor = UIColor.redColor()
        }
        else if playerTurnIdentifierLabel.text == info.player4 {
            view.backgroundColor = UIColor.yellowColor()
        }
        else if playerTurnIdentifierLabel.text == info.player5 {
            view.backgroundColor = UIColor.purpleColor()
        }
        
    }
    
}


 

