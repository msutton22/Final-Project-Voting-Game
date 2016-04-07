//
//  ViewController.swift
//  The Voting
//
//  Created by Maddy Sutton on 4/6/16.
//  Copyright © 2016 Bits Please. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var info = Information()
    @IBOutlet weak var p1TextField: UITextField!

    @IBOutlet weak var p2TextField: UITextField!
    
    @IBOutlet weak var p3TextField: UITextField!
    
    @IBOutlet weak var p4TextField: UITextField!
    
    @IBOutlet weak var p5TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func nextButtonAction(sender: AnyObject) {
        if p1TextField.text?.characters.count != 0 && p2TextField.text?.characters.count != 0 && p3TextField.text?.characters.count != 0 {
                performSegueWithIdentifier("titleToQuestions", sender: self)
                }
        p1TextField.resignFirstResponder()
        p2TextField.resignFirstResponder()
        p3TextField.resignFirstResponder()
        p4TextField.resignFirstResponder()
        p5TextField.resignFirstResponder()            }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as! QuestionViewController
        dvc.info = self.info
    }



    
}



