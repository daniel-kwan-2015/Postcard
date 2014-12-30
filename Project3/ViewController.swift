//
//  ViewController.swift
//  Project3
//
//  Created by Pui K Kwan on 28/12/14.
//  Copyright (c) 2014 Pui K Kwan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailClicked(sender: AnyObject) {
        messageLabel.hidden = false
        messageLabel.text = enterNameTextField.text
        enterNameTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        helloLabel.text = enterMessageTextField.text
        helloLabel.hidden = false
        
        sendMailButton.setTitle("Mail Sent Already", forState: UIControlState.Normal)
        
    }

}

