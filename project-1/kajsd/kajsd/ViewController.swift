//
//  ViewController.swift
//  kajsd
//
//  Created by Sterling Fraser on 9/29/15.
//  Copyright (c) 2015 Sterling Fraser. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {

   var locations = ["Larimer Square", "Pearl Street", "Red Rocks Ampitheatre"]
    
    @IBOutlet weak var enterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        enterButton.setTitle(locations[0], forState: .Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var DestViewController : textField = segue.destinationViewController as! textField
        let titleValueString = enterButton.currentTitle!
        DestViewController.titleText = titleValueString
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return locations.count
    }

    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return locations[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var itemSelected = locations[row]
        enterButton.setTitle(itemSelected, forState: .Normal)
    }
    
    
}

