//
//  MainVC.swift
//  MySoundBoard
//
//  Created by Neil Sood on 11/17/18.
//  Copyright © 2018 Neil Sood. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print(buttons)
        for button in buttons {
            print(button.tag)
//            let tapGesture = UITapGestureRecognizer(target: self, action: Selector(("tapPress:")))
//            let longGesture = UILongPressGestureRecognizer(target: self, action: Selector(("longPress:")))
//            tapGesture.numberOfTapsRequired = 1
//            button.addGestureRecognizer(tapGesture)
//            button.addGestureRecognizer(longGesture)
        }
    }
    
    @IBAction func clearAllPressed(_ sender: UIBarButtonItem) {
        for button in buttons {
            button.setImage(nil, for: .normal)
        }
    }
    
    @IBAction func soundPressed(_ sender: UIButton) {
        buttons[sender.tag - 1].setImage(UIImage(named:"speaker_white"), for: .normal)
        print("press")
    }
    
    func tapPress() {
        print("play")
        // play if possible
    }
    
    func longPress(sender: UIGestureRecognizer) {
        print("Record")
        if sender.state == .ended {
            // stop recording
        }
        else if sender.state == .began {
            // start recording
        }
    }
    
}

