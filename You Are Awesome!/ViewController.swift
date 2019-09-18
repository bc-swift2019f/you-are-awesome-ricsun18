//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Richard Sunden on 8/28/19.
//  Copyright © 2019 Richard Sunden. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var awesomeImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 6
    
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
        
        //shows a message
        repeat {
            newIndex = Int.random(in: 0..<messages.count)
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        //shows an image
        repeat {
            newIndex = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        awesomeImageView.image = UIImage(named: "image\(newIndex)")
        
        //gets a random number to play in our soundName file
        repeat {
            newIndex = Int.random(in: 0..<numberOfSounds)
        } while soundIndex == newIndex
        
        soundIndex = newIndex
        
        //plays a sound
        var soundName = "sound\(soundIndex)"
        
        if let sound = NSDataAsset(name: soundName) {
            do {
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch {
                print("ERROR: data in \(soundName) couldn't be played as a sound")
            }
        } else {
            print("Error: file \(soundName) didn't load")
        }
        
    }
}

