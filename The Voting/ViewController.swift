//
//  ViewController.swift
//  The Voting
//
//  Created by Maddy Sutton on 4/6/16.
//  Copyright © 2016 Bits Please. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    @IBOutlet weak var p1TextField: UITextField!
    @IBOutlet weak var p2TextField: UITextField!
    @IBOutlet weak var p3TextField: UITextField!
    @IBOutlet weak var p4TextField: UITextField!
    @IBOutlet weak var p5TextField: UITextField!
    
    var info = Information()
    var backgroundMusicPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
  //      playBackgroundMusic()
        p1TextField.text = "\(info.player1)"
        p2TextField.text = "\(info.player2)"
        p3TextField.text = "\(info.player3)"
        p4TextField.text = "\(info.player4)"
        p5TextField.text = "\(info.player5)"
    }
    
    @IBAction func nextButtonAction(sender: AnyObject) {
        if p1TextField.text?.characters.count != 0 && p2TextField.text?.characters.count != 0 && p3TextField.text?.characters.count != 0 && p4TextField.text?.characters.count != 0 && p5TextField.text?.characters.count != 0 {
            info.player1 = String(p1TextField.text!)
            info.player2 = String(p2TextField.text!)
            info.player3 = String(p3TextField.text!)
            info.player4 = String(p4TextField.text!)
            info.player5 = String(p5TextField.text!)
            performSegueWithIdentifier("titleToQuestions", sender: self)
            }
        }
    
    @IBAction func aboutThisGameButton(sender: AnyObject) {
        info.player1 = String(p1TextField.text!)
        info.player2 = String(p2TextField.text!)
        info.player3 = String(p3TextField.text!)
        info.player4 = String(p4TextField.text!)
        info.player5 = String(p5TextField.text!)
        performSegueWithIdentifier("toInstruct", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "titleToQuestions" {
            let dvc = segue.destinationViewController as! QuestionViewController
            dvc.info = self.info
        }
            
        else if segue.identifier == "toInstruct" {
            let dvc = segue.destinationViewController as! InstructionsViewController
            dvc.info = self.info
      }
  }

   // func playBackgroundMusic() {
   //     let url = NSBundle.mainBundle().URLForResource("game music.mp3", withExtension: nil)
   
   //     do {
   //         backgroundMusicPlayer = try AVAudioPlayer(contentsOfURL: url!)
   //         backgroundMusicPlayer.numberOfLoops = -1
   //         backgroundMusicPlayer.prepareToPlay()
   //         backgroundMusicPlayer.play()
   //     } catch let error as NSError {
   //         print(error.description)
   //     }
   // }

    
}



