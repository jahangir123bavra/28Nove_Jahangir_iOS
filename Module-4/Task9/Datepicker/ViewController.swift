//
//  ViewController.swift
//  Datepicker
//
//  Created by mr.jb on 07/12/22.
//

import UIKit

class ViewController: UIViewController  {
   
    
    @IBOutlet var Date_lbl: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func click(_ sender: UIDatePicker) {
        let dt = sender.date
       let dtfm = DateFormatter()
        dtfm.dateStyle = .full
        Date_lbl.text = dtfm.string(from: dt)
        print(dt)
        
        }
        
    
   
   
}

