//
//  ViewController.swift
//  Lab-3
//
//  Created by Sterling Fraser on 9/22/15.
//  Copyright (c) 2015 Sterling Fraser. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var height: UITextField!
    
    @IBOutlet weak var seam: UITextField!
    
    @IBOutlet weak var gHeight: UILabel!
    
    @IBOutlet weak var spots: UISegmentedControl!
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func updateFinal(){
        let heightIt = (height.text as NSString).floatValue*12
        let legIt = (seam.text as NSString).floatValue
        var total=((heightIt+legIt)*2)/12
        total = round(total)
        var heightFormatter = NSNumberFormatter()
        heightFormatter.numberStyle=NSNumberFormatterStyle.DecimalStyle
        gHeight.text=heightFormatter.stringFromNumber(total)
        if total > 18 {
            //create a UIAlertController object
            let alert=UIAlertController(title: "Congratulations", message: "You are one tall giraffe!", preferredStyle: UIAlertControllerStyle.Alert)
            //create a UIAlertAction object for the button
            let cancelAction=UIAlertAction(title: "Yeah!", style:UIAlertActionStyle.Cancel, handler: nil)
            alert.addAction(cancelAction) //adds the alert action to the alert object
            let okAction=UIAlertAction(title: "Wooh!", style: UIAlertActionStyle.Default, handler: {action in
                self.updateFinal()
            })
            alert.addAction(okAction)
            presentViewController(alert, animated: true, completion: nil)
        }

    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        updateFinal()
            }
    
    override func viewDidLoad() {
        height.delegate=self
        seam.delegate=self
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

