//
//  InstructionsViewController.swift
//  The Voting
//
//  Created by rkalvani on 4/11/16.
//  Copyright © 2016 Bits Please. All rights reserved.
//

import UIKit

class InstructionsViewController: UIViewController {

    var info = Information()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func backButton(sender: AnyObject) {
        performSegueWithIdentifier("backToStart", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            let dvc = segue.destinationViewController as! ViewController
            dvc.info = self.info
    }

   
}
