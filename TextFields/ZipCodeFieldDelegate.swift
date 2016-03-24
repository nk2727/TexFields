//
//  ZipCodeFieldDelegate.swift
//  TextFields
//
//  Created by Nicole on 3/24/16.
//  Copyright © 2016 Nicole. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeFieldDelegate: NSObject, UITextFieldDelegate {
    
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        //
        // create the string object for text as cast it as type NNString
        //
        var newText = textField.text! as NSString
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
        //
        // return true of false depending the length of the string
        //
        return newText.length <= 5
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
}