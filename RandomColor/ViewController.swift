//
//  ViewController.swift
//  RandomColor
//
//  Created by Claudio Carnino on 22/10/2014.
//  Copyright (c) 2014 Tugulab. All rights reserved.
//

import UIKit
import RandomColor

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressNewRandomColorButton(sender: AnyObject) {
        self.view.backgroundColor = UIColor.RC_randomColor()
    }
    
    @IBAction func didPressNewRandomToneByColorButton(sender: AnyObject) {
        self.view.backgroundColor = UIColor.RC_randomToneByColor(self.view.backgroundColor!)
    }

}

