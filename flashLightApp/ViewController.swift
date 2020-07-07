//
//  ViewController.swift
//  flashLightApp
//
//  Created by BYNC on 7/7/20.
//  Copyright © 2020 AliDarawsha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var topLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func onButtonTap(_ sender: UIButton) {
        self.view.backgroundColor = UIColor.blue
        
        topLabel.text = "It's not easy being green"
        topLabel.textColor = UIColor.green
        
        
    }
    
    @IBAction func onSecondButtonTap(_ sender: UIButton) {
        topLabel.text = "What color am I?"
        self.view.backgroundColor = UIColor.white
    }
    
    @IBAction func thirdButton(_ sender: UIButton) {
        var redV = CGFloat(drand48())
        var greenV = CGFloat(drand48())
        var blueV = CGFloat(drand48())
        
        self.view.backgroundColor = UIColor(red: redV, green: greenV, blue: blueV, alpha: 0.5)
    }
    
    override func becomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        var redV = CGFloat(drand48())
        var greenV = CGFloat(drand48())
        var blueV = CGFloat(drand48())
        
        if motion == .motionShake {
            self.view.backgroundColor = UIColor(red: redV, green: greenV, blue: blueV, alpha: 0.5)
        }
    }
    
}

