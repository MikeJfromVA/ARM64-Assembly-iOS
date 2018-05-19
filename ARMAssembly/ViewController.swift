//
//  ViewController.swift
//  ARMAssembly
//
//  Created by Michael Johnson on 5/18/18.
//  Copyright © 2018 Michael Johnson. All rights reserved.
//

import UIKit

extension Int {
    init?(_ string: String?) {
        guard let string = string else { return nil }
        self.init(string)
    }
}

class ViewController: UIViewController {
    
    @IBOutlet weak var decimalNumberField: UITextField!
    @IBOutlet weak var result: UILabel!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func calculate(_ sender: Any) {
        let warning = "Please enter a number \nfrom 0 to 1 000 000 000"

        guard let userNumber = Int(decimalNumberField.text) else {
            result.text = warning
            return
        }

        let cint = CInt(userNumber)
        
        let resultCount = popcount(cint)
        
        result.text = "The number of 1-bits in \(userNumber) is \(resultCount)\n" +
        "Because its binary representation is: \n" +
            String(userNumber, radix: 2)
        
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

