//
//  QuestionViewController.swift
//  The Voting
//
//  Created by rkalvani on 4/7/16.
//  Copyright © 2016 Bits Please. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    var questionNumber = Int()
    
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
        }
    }

}
