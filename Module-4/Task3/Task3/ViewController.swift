//
//  ViewController.swift
//  Task3
//
//  Created by mr.jb on 11/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var Text1: UITextField!
    @IBOutlet var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func ShowButton(_ sender: Any) {
        
        displayLabel.text = Text1.text
    }

}

