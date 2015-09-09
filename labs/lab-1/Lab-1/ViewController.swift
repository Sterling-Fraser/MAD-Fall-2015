//
//  ViewController.swift
//  Lab-1
//
//  Created by Sterling Fraser on 9/9/15.
//  Copyright (c) 2015 Sterling Fraser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animImg: UIImageView!
    @IBOutlet weak var animLab: UILabel!
    
    @IBAction func pony(sender: UIButton) {
        if sender.tag==1 {
            animImg.image=UIImage(named: "pony.jpg")
            animLab.text="This Spectacular Shetland!"
        }
        else if sender.tag==2 {
            animImg.image=UIImage(named: "penguin.jpg")
            animLab.text="These Perfectional Penguins!"
        }
        else if sender.tag==3 {
            animImg.image=UIImage(named: "guinea.jpg")
            animLab.text="This Glorious Guinea Pig!"
        }
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

