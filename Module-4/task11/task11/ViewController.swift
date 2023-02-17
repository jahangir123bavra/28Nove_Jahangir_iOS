//
//  ViewController.swift
//  task11
//
//  Created by mr.jb on 11/12/22.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDelegate , UIPickerViewDataSource {
    @IBOutlet var backgroundView: UIView!
    
    @IBOutlet var color1: UIPickerView!
    var color = [""]
    var selected = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        color1.delegate =  self
        color1.dataSource = self
        color = ["Red" ,"Yellow" , "Blue" , "Green"]
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return color.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return color[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selected = row
        if(selected == 0){
            backgroundView.backgroundColor = UIColor.red
        }
        else if (selected == 1) {
            backgroundView.backgroundColor = UIColor.yellow
        }
        else if (selected == 2) {
            backgroundView.backgroundColor = UIColor.systemBlue
        }
        else if (selected == 3) {
            backgroundView.backgroundColor = UIColor.green
        }
        }
    
    func pikerView(_ pikerView: UIPickerView , titleForRow row:Int , forComponent component: Int)-> String?
    {
            return color[row]
        }
    
}

