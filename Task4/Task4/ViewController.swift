//
//  ViewController.swift
//  Task4
//
//  Created by mr.jb on 11/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func showButton(_ sender: Any) {
        
        textLabel.isHidden = false
    }
    
    @IBAction func hideButton(_ sender: Any) {
        
        textLabel.isHidden = true
    }
}

