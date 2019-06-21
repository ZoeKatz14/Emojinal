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
    let customMessages = [
        "globe" : ["You should check out Capetown, South Africa! 🇿🇦🇿🇦","Go to Moscow! 🇷🇺🇷🇺", "Rio de Janerio is cool! 🇧🇷🇧🇷"],
        "volcano" : ["Try Hawaii! 🏝🏝","Mt. Vesuvius might work! 🇮🇹🇮🇹","Mt. Saint Helens is pretty cool! 🇺🇸🇺🇸"],
        "beach" : ["What about Key West! 🏄🏄","Blue Lagoon, Turkey is stunning. 💎💎","Fiji might be for you! 🇫🇯🇫🇯"],
        "desert" : ["Death Valley is always a hit! 🐪🐪","Check out the Sahara! 🐫🐫","Maybe Antartica? 🇦🇶🇦🇶"],
        "castle" : ["Go back in time to Chartres, France! 🤴🤴","What about Himeji Castle in Japan? 🗾🗾", "Try Lakshamana Temple in India! 🇮🇳🇮🇳"]
    ]
    
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        let random = Int.random(in: 0 ... 2)
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[random]
        let alertController = UIAlertController(title: selectedEmotion, message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
                alertController.addAction(UIAlertAction(title: "On my way!", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

}

