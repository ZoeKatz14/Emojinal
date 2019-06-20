//
//  ViewController.swift
//  Emojinal
//
//  Created by Apple on 6/20/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let emojis = ["🌍":"globe","🌋":"volcano","🏖":"beach","🏜":"desert","🏰":"castle"]
    let customMessages = ["globe" : "You should check out Capetown, South Africa!", "volcano":"Try Hawaii! 🏝🏝", "beach":"What about Key West! 🏄🏄","desert":"Death Valley is always a hit! 🐪🐪", "castle":"Go back in time to Chartres, France! 🤴🤴"]
    
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]
        let alertController = UIAlertController(title: selectedEmotion, message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
                alertController.addAction(UIAlertAction(title: "On my way!", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

}

