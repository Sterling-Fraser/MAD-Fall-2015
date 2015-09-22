//
//  ViewController.swift
//  Lab-2
//
//  Created by Sterling Fraser on 9/21/15.
//  Copyright (c) 2015 Sterling Fraser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgMain: UIImageView!
    
    @IBOutlet weak var labelTop: UILabel!

    @IBOutlet weak var segControl: UISegmentedControl!
    
    @IBOutlet weak var switchIt: UISwitch!
    
    @IBOutlet weak var sliderLab: UILabel!
    
    func switchChange (){
        if segControl.selectedSegmentIndex==0 {
            labelTop.text="Barcelona Street View"
            imgMain.image=UIImage(named: "regular")
        } else if segControl.selectedSegmentIndex==1 {
            labelTop.text="Barcelona Subway View"
            imgMain.image=UIImage(named: "subway")
        }
    }
    
    func instaSwap(){
        if switchIt.on && segControl.selectedSegmentIndex==0 {
            labelTop.text="Vista De La Calle Barcelona"
        }else if switchIt.on && segControl.selectedSegmentIndex==1 {
            labelTop.text="Vista De Metro Barcelona"
        }
        else if segControl.selectedSegmentIndex==0 {
            labelTop.text="Barcelona Street View"
            imgMain.image=UIImage(named: "regular")
        } else if segControl.selectedSegmentIndex==1 {
            labelTop.text="Barcelona Subway View"
            imgMain.image=UIImage(named: "subway")
        }
    }
    
    @IBAction func updateImg(sender: UISegmentedControl) {
        switchChange()
        instaSwap()
    }
    
    @IBAction func updater(sender: UISwitch) {
        instaSwap()
    }
    
    @IBAction func changeAValue(sender: UISlider) {
        let fontSize=sender.value //float
        sliderLab.text=String(format: "%.0f", fontSize) //convert float to String
        let fontSizeCGFloat=CGFloat(fontSize) //convert float to CGFloat
        labelTop.font=UIFont.systemFontOfSize(fontSizeCGFloat) //create a UIFont object and assign to the font property
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

