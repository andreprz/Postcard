//
//  ViewController.swift
//  postcard
//
//  Created by Andre Perez on 12/25/14.
//  Copyright (c) 2014 Andre Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enternametextfield: UITextField!
    
    @IBOutlet weak var entermessagetextfield: UITextField!
    
    @IBOutlet weak var einstein: UIImageView!
    
    @IBOutlet weak var sendmailbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendmailbuttonpressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = entermessagetextfield.text
        
        messageLabel.textColor = UIColor.redColor()
        
        entermessagetextfield.text = ""
        entermessagetextfield.resignFirstResponder()
        sendmailbutton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

