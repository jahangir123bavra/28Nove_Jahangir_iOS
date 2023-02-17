//
//  ViewController.swift
//  task6
//
//  Created by mr.jb on 11/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var btn: UIButton!
    @IBOutlet var imageview: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changact(_ sender: Any)
    {
        imageview.image = UIImage(named:"image3")
        btn.backgroundColor = UIColor(named: "white")
    }
    
}

