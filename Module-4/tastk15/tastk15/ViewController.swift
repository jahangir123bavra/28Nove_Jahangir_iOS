//
//  ViewController.swift
//  tastk15
//
//  Created by mr.jb on 11/12/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var date_picker: UIDatePicker!
    
    @IBOutlet var timeLabel: UILabel!
    override func viewDidLoad()
    {super.viewDidLoad()
        
    }
    @IBAction func refreshTapped(_ sender : UIButton){
        let Currentdatetime = Date()
        let formatter = DateFormatter()
        formatter.timeStyle = .medium
        formatter.dateStyle = .long
        let dateTimestring = formatter.string(from: Currentdatetime)
        timeLabel.text = "the current date and time: " + dateTimestring
    }

}

