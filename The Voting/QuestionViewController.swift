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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func chooseQuestion() {
       questionNumber = Int(arc4random())
        switch questionNumber {
        case 0:
            //questionLabel.text = "Who would have the hardest time talking their way out of an insane asylum?"
            //answers
        case 1:
            //questionLabel.text = "Who will get convicted of a crime they didn't commit?"
            //answers
        case 2:
            //questionLabel.text ="Who has gotten the most upset while playing Monopoly?"
        case 3:
            //questionLabel.text = "Most Likely To Move Out Of The Country"
        case 4:
            //questionLabel.text = "Who is most likely to become a reality TV star?"
        case 5 //questionLabel.text = "Who is the biggest flirt?"
        }
    }

    @IBAction func p3NameButton(sender: AnyObject) {
    }
    
    @IBAction func p4NameButton(sender: AnyObject) {
    }
    
    @IBAction func p5NameButton(sender: AnyObject) {
    }
    
}
