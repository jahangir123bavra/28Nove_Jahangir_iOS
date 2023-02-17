//
//  ViewController.swift
//  task1
//
//  Created by mr.jb on 30/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.layer.cornerRadius = 10
        emailTextField.layer.masksToBounds = true
        emailTextField.borderStyle = .roundedRect
        passTextField.layer.cornerRadius = 10
        passTextField.isSecureTextEntry = true
        signUpButton.layer.cornerRadius = 10
    }


}

