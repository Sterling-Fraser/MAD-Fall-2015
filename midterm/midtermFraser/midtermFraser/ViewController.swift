//
//  ViewController.swift
//  midtermFraser
//
//  Created by Sterling Fraser on 10/29/15.
//  Copyright (c) 2015 Sterling Fraser. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var commuteMiles: UITextField!
    
    @IBOutlet weak var totComTime: UILabel!
    
    @IBOutlet weak var gasPurchase: UILabel!
    
    @IBOutlet weak var vehImage: UIImageView!
    
    @IBOutlet weak var segControl: UISegmentedControl!

    @IBOutlet weak var gasAmount: UILabel!

    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func sliderGas(sender: UISlider) {
        let gasLeft=sender.value
        gasAmount.text=String(format: "%.0f", gasLeft)
    }
    
    func changeImage(){
        let time=(commuteMiles.text as NSString).floatValue/20*60
        
        let gas=(commuteMiles.text as NSString).floatValue/24
        
        var multiplier : Float = 0.0
        var multiplier2 : Float = 0.0

        
        if segControl.selectedSegmentIndex == 0 {
            vehImage.image=UIImage(named: "car_icon")
            multiplier = gas * 1
            multiplier2 = time * 1
        }
        else if segControl.selectedSegmentIndex == 1 {
            vehImage.image=UIImage(named: "bus_icon")
            multiplier = gas * 0
            multiplier2 = time * 1.5
        }
        else if segControl.selectedSegmentIndex == 2 {
            vehImage.image=UIImage(named: "bike_icon")
            multiplier = gas * 0
            multiplier2 = time * 2.3
        }
        
        
        var numberFormatter = NSNumberFormatter()
        numberFormatter.numberStyle=NSNumberFormatterStyle.DecimalStyle
        totComTime.text=numberFormatter.stringFromNumber(multiplier2)
        gasPurchase.text=numberFormatter.stringFromNumber(multiplier)
    }
    
    func calcTotals (){
        let time=(commuteMiles.text as NSString).floatValue/20*60
        
        let gas=(commuteMiles.text as NSString).floatValue/24
        
        var numberFormatter = NSNumberFormatter()
        numberFormatter.numberStyle=NSNumberFormatterStyle.DecimalStyle
        totComTime.text=numberFormatter.stringFromNumber(time)
        gasPurchase.text=numberFormatter.stringFromNumber(gas)
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        calcTotals()
    }

    @IBAction func updateTransport(sender: UISegmentedControl) {
        changeImage()
    }
    
    override func viewDidLoad() {
        commuteMiles.delegate=self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

