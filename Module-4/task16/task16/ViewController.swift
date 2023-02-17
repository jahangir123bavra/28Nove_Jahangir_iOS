//
//  ViewController.swift
//  task16
//
//  Created by mr.jb on 12/12/22.
//

import UIKit
struct data
{
    
}
class country {
    var country: String = ""
    var cities: [String] = []
    init(country: String, cities: [String]) {
        self.cities = cities
        self.country = country
    }
}

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{

    @IBOutlet var countryLbl: UILabel!
    @IBOutlet var pickerview: UIPickerView!
    var countris = [country]()
    override func viewDidLoad()
    { pickerview.delegate = self
        pickerview.dataSource = self
        
        countris.append(country(country: "india", cities: ["Gujrat","Tamilnaddu","Rajsthan","Himachalprdes","Jammukasmir"]))
        countris.append(country(country: "USA", cities: ["Alaska","Califonia","Florida","Lowa","Nebraska"]))
        countris.append(country(country: "Austrailia", cities: ["Tasmania","Victoria","Queensland","Territory","Wales"]))
        
        
        
        
       
        super.viewDidLoad()
       
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return countris.count
    }
        else
        
        {
            let selectedcountry = (pickerview.selectedRow(inComponent: 0))
            return countris[selectedcountry].cities
        }
        
        
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        <#code#>
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        <#code#>
    }
}

