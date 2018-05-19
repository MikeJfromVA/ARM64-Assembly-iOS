//
//  ViewController.swift
//  ARMAssembly
//
//  Created by Michael Johnson on 5/18/18.
//  Copyright © 2018 Michael Johnson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var decimalNumberField: UITextField!
    @IBOutlet weak var result: UILabel!
    
    @IBAction func calculate(_ sender: Any) {
        result.text = "We should probably do something smart here"
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

