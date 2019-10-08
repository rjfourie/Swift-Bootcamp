//
//  ViewController.swift
//  exercise00
//
//  Created by Russell Fourie on 2019/10/07.
//  Copyright © 2019 Russell Fourie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ClickMe: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func touchdown(_ sender: Any) {
        print("Hello World!")
    }
    

}

