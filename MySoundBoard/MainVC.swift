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
        
        for button in buttons {
            let tapGesture = UITapGestureRecognizer(target: self, action: "tapPress")  //Tap function will call when user tap on button
            let longGesture = UILongPressGestureRecognizer(target: self, action: "longPress") //Long function will call when user long press on button.
            tapGesture.numberOfTapsRequired = 1
            button.addGestureRecognizer(tapGesture)
            button.addGestureRecognizer(longGesture)
        }
    }

    @IBAction func soundPressed(_ sender: UIButton) {
        buttons[sender.tag - 1].backgroundColor = .black
    }
    
    func tapPress() {
        
        print("play")
    }
    
    func longPress() {
        
        print("Record")
    }
    
}

