//
//  ViewController.swift
//  exercise01
//
//  Created by Russell Fourie on 2019/10/07.
//  Copyright © 2019 Russell Fourie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var txt = "Hello"
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        changeText()
    }
    
    func changeText() {
        label.text = txt
    }
    @IBAction func buttonClick(_ sender: Any) {
        txt = "Something else!"
        changeText()
    }
}

