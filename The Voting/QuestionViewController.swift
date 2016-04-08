//
//  QuestionViewController.swift
//  The Voting
//
//  Created by rkalvani on 4/7/16.
//  Copyright © 2016 Bits Please. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    var info = Information()
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var playerTurnIdentifierLabel: UILabel!
    
        override func viewDidLoad() {
        super.viewDidLoad()
            questionLabel.text = String(info.questions)
    }
    
    @IBAction func p1NameButton(sender: AnyObject) {
    }
    
    @IBAction func p2NameButton(sender: AnyObject) {
    }
    
    @IBAction func p3NameButton(sender: AnyObject) {
    }
    
    @IBAction func p4NameButton(sender: AnyObject) {
    }
    
    @IBAction func p5NameButton(sender: AnyObject) {
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


 

