//
//  ViewController.swift
//  Task5
//
//  Created by mr.jb on 11/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var next: UIButton!
    @IBOutlet var textField1: UITextField!
    @IBOutlet var textField2: UITextField!
    @IBOutlet var submitValue: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func press (_sender : UIButton){
        
        let alert = UIAlertController(title: "Alert", message: "Are you sure to move next page", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default){
            UIAlertAction in
//            guard let controller = self.storyboard?.instantiateViewController(withIdentifier: "nextViewController") as? nextViewController else { return  }
//            SharedDelegate.navigationVC.pushViewController(controller, animated: true)
            self.submitValue.text = self.textField1.text
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel){
            UIAlertAction in
        }
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        
        self.present(alert, animated: true, completion: nil)
    }
    
}

