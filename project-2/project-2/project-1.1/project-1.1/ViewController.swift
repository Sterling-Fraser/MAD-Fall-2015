//
//  ViewController.swift
//  project-1.1
//
//  Created by Sterling Fraser on 9/24/15.
//  Copyright (c) 2015 Sterling Fraser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    func align(){
        self.textIt.scrollRangeToVisible(NSMakeRange(0, 0))
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

