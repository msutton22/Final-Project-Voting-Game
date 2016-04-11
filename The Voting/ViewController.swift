//
//  ViewController.swift
//  The Voting
//
//  Created by Maddy Sutton on 4/6/16.
//  Copyright © 2016 Bits Please. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var p1TextField: UITextField!
    @IBOutlet weak var p2TextField: UITextField!
    @IBOutlet weak var p3TextField: UITextField!
    @IBOutlet weak var p4TextField: UITextField!
    @IBOutlet weak var p5TextField: UITextField!
    
    var info = Information()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func nextButtonAction(sender: AnyObject) {
        if p1TextField.text?.characters.count != 0 && p2TextField.text?.characters.count != 0 && p3TextField.text?.characters.count != 0 {
            p1TextField.text = info.player1
            p2TextField.text = info.player2
            p3TextField.text = info.player3
            p4TextField.text = info.player4
            p5TextField.text = info.player5
                performSegueWithIdentifier("titleToQuestions", sender: self)
                }
                    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "titleToQuestions" {
            let dvc = segue.destinationViewController as! QuestionViewController
            dvc.info = self.info
        }
            /// HELP 
        else {
            let dvc = segue.destinationViewController as! InstructionsViewController
            dvc.info = self.info
        }
        
    }



    
}



