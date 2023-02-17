//
//  ViewController.swift
//  task10.1
//
//  Created by mr.jb on 11/12/22.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDelegate , UIPickerViewDataSource {
   

    @IBOutlet var course: UIPickerView!
    var course1 = [""]
    override func viewDidLoad() {
        super.viewDidLoad()
        course.delegate =  self
        course.dataSource = self
        course1 = ["Developer" , "Designer" , "Data Scientist" , "Business Developer" , "Tester" , "Human Resourses" , "Digital Marketing"]
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return course1.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return course1[row]
    }
}

