//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Richard Sunden on 8/28/19.
//  Copyright © 2019 Richard Sunden. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
}

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        messageLabel.text = "You Are Awesome!"
    }
}

