//
//  ViewController.swift
//  task_12_date picker
//
//  Created by mr.jb on 23/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var text_date: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
   
    @IBAction func date_picker(_ sender: UIDatePicker)
    {
    
        let dt = Date().self
        print(dt)
        let dtfrm = DateFormatter.self()
        dtfrm.dateFormat = "dd/MMM/yyyy"
        dtfrm.dateStyle = .medium
        text_date.text = dtfrm.string(from: dt)
    }

}

