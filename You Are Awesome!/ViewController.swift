//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Richard Sunden on 8/28/19.
//  Copyright © 2019 Richard Sunden. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var awesomeImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    var index = -1
    var imageIndex = -1
    let numberOfImages = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
}

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        let messages = ["You Are Awesome!",
        "You Are Great!",
        "You Are Fantastic!",
        "When the Genius Bar needs help, they call you!",
        "You brighten my day!",
        "You are da bomb!",
        "Hey, fabulous!",
        "You are tremendous!",
        "You've got the design skills of Jony Ive!",
        "I can't wait to download your app!"]
 
        var newIndex: Int
        
        repeat {
            newIndex = Int.random(in: 0..<messages.count)
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]

        repeat {
            newIndex = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        awesomeImageView.image = UIImage(named: "image\(newIndex)")
        
    }
}

