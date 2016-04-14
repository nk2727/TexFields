//
//  ViewController.swift
//  TextFields
//
//  Created by Nicole on 3/24/16.
//  Copyright © 2016 Nicole. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    //
    // outlets for the fields and switch
    //
    @IBOutlet weak var zipCodeField: UITextField!
    @IBOutlet weak var cashField: UITextField!
    @IBOutlet weak var lockableField: UITextField!
    @IBOutlet weak var lockableSwitch: UISwitch!
    
    //
    // create delegate objects for zipcode and cash fields
    // the last text field with a switch, it's delegate is in this file
    // below
    //
    
    let zipCodeDelegate = ZipCodeFieldDelegate()
    let cashDelegate = CashFieldDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        //
        //call delegates
        //
        self.zipCodeField.delegate=self.zipCodeDelegate
        self.cashField.delegate=self.cashDelegate
      
        self.lockableField.delegate=self
        self.lockableSwitch.setOn(false, animated: false)
        
    }
    
    //
    // Lockable Text Field Delegate
    //
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        return self.lockableSwitch.on
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }

    @IBAction func toggleLockableSwitch(sender: AnyObject) {
        
        if !(sender as! UISwitch).on {
            self.lockableField.resignFirstResponder()
        }
    }
}

