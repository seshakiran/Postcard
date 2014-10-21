//
//  ViewController.swift
//  Postcard
//
//  Created by Kiran Adimatyam on 10/15/14.
//  Copyright (c) 2014 self.edu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    

    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text=""
        messageLabel.textColor = UIColor.redColor()
        enterMessageTextField.resignFirstResponder()
        messageLabel.hidden = false
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }
    
}

