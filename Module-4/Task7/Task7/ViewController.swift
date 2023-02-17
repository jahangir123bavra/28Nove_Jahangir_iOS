//
//  ViewController.swift
//  Task7
//
//  Created by mr.jb on 11/12/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var mainView: UIView!
    @IBOutlet var image3: UIImageView!
    @IBOutlet var image1: UIImageView!
    @IBOutlet var image2: UIImageView!
    override func viewDidLoad() {
 
        super.viewDidLoad()
       
    }
    @IBAction func click1(_ sender: Any)
    {
        image1.image = UIImage(named:"image1")
        mainView.backgroundColor = .cyan
        
    }
    
    @IBAction func click2(_ sender: Any) {
        image2.image = UIImage(named:"image2")
        mainView.backgroundColor = .darkGray
    }
    
    @IBAction func click3(_ sender: Any) {
        image3.image = UIImage(named:"image3")
        mainView.backgroundColor = .lightGray
    }
    
}


