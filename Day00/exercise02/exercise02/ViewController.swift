//
//  ViewController.swift
//  exercise02
//
//  Created by Russell Fourie on 2019/10/08.
//  Copyright © 2019 Russell Fourie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton)
    {
        label.text = label.text! + String(sender.tag)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

