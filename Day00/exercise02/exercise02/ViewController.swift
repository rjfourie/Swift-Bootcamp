//
//  ViewController.swift
//  exercise02
//
//  Created by Russell Fourie on 2019/10/08.
//  Copyright © 2019 Russell Fourie. All rights reserved.
//

import UIKit

enum modes {
    case NOT_SET
    case ADDITION
    case SUBTRACTION
    case MULTIPLICATION
    case DIVISION
}

class ViewController: UIViewController {

    var labelString:String = "0"
    var savedNum:Double = 0
    var currentMode:modes = modes.NOT_SET
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(num:Int,_ sender: UIButton)
    {
        label.text = label.text! + String(sender.tag)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

