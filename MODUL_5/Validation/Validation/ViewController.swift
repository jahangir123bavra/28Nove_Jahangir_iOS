//
//  ViewController.swift
//  Validation
//
//  Created by mr.jb on 25/04/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var btnSubmit: UIButton!
    
    @IBOutlet var password: UITextField!
    @IBOutlet var email: UITextField!
    @IBOutlet var view1: UIView!
    @IBOutlet var ghjf: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    
       let gradientLayer:CAGradientLayer = CAGradientLayer()
       gradientLayer.frame.size = btnSubmit.frame.size
      
        gradientLayer.colors = [UIColor(red:132/255,green: 55/255, blue: 25/255, alpha: 1).cgColor,UIColor(red: 84/255, green: 150/255, blue: 210/255, alpha: 1).cgColor]
        gradientLayer.startPoint = CGPoint(x: 1, y: 1.5)
         gradientLayer.endPoint = CGPoint(x: 1.5, y: 1.0)
        gradientLayer.cornerRadius = 10
        self.view.addSubview(btnSubmit)
        self.view.addSubview(ghjf)
        self.view.addSubview(email)
        self.view.addSubview(password)
       ghjf.layer.addSublayer(gradientLayer)
        
        
        let gradientLayer1:CAGradientLayer = CAGradientLayer()
        gradientLayer1.frame.size = view1.frame.size
       
         gradientLayer1.colors = [UIColor(red:221/255,green: 63/255, blue: 48/255, alpha: 1).cgColor,UIColor(red: 243/255, green: 208/255, blue: 67/255, alpha: 1).cgColor]
        gradientLayer1.startPoint = CGPoint(x: 1, y: 1.5)
          gradientLayer1.endPoint = CGPoint(x: 1.5, y: 1.0)
         gradientLayer1.cornerRadius = 10
        // self.view.addSubview(btnSubmit)
        view1.layer.addSublayer(gradientLayer1)
        
    }


}

