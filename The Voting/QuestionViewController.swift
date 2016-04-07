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
        default: 0
        }
    }

}
