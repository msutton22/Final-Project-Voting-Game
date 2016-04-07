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
    @IBOutlet weak var answer1Button: UIButton!
    @IBOutlet weak var answer2Button: UIButton!
    @IBOutlet weak var answer3Button: UIButton!
    @IBOutlet weak var answer4Button: UIButton!
    @IBOutlet weak var answer5Button: UIButton!
    
   var questionNumber : UInt32!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func p3NameButton(sender: AnyObject) {
    }
    
    @IBAction func p4NameButton(sender: AnyObject) {
    }
    
    @IBAction func p5NameButton(sender: AnyObject) {
    }

func chooseQuestion() {
    questionNumber = arc4random() % 5
    switch questionNumber {
    case 0:
    questionLabel.text = "Who would have the hardest time talking their way out of an insane asylum?"
    //answer choices
    case 1:
    questionLabel.text = "Who will get convicted of a crime they didn't commit?"
    case 2:
    questionLabel.text = "Who has gotten the most upset while playing Monopoly?"
    case 3:
    questionLabel.text = "Most Likely To Move Out Of The Country"
    case 4:
    questionLabel.text = "Who is most likely to become a reality TV star?"
    case 5:
    questionLabel.text = "Who is the biggest flirt?"
    default:
        questionLabel.text = "Who would be the most likely to.."
        
        }
    }
 }

