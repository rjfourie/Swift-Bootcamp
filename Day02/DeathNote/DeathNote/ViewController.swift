//
//  ViewController.swift
//  DeathNote
//
//  Created by Russell Fourie on 2019/10/10.
//  Copyright © 2019 Russell Fourie. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let names = ["Russell - car crash", "John - heart attack", "Simon - drug overdose"]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DeathNote", for: indexPath)
        cell.textLabel?.text = names[indexPath.row];
        return cell
    }

}
