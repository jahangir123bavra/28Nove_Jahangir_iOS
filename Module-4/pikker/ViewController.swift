//
//  ViewController.swift
//  pikker
//
//  Created by mr.jb on 05/12/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var city_data: UITextField!
    var Country = [""]
    var state1 = [""]
    var state2 = [""]
    var state3 = [""]
    var state4 = [""]
    var selected = 0
    override func viewDidLoad() {
        super.viewDidLoad()
      
        Country = ["Africa","landan","Us","India"]
        state1 = ["A","B","C","D"]
        state2 = ["1","2","3","4"]
        state3 = ["a","b","c","d"]
        state4 = ["aa","bb","cc","dd"]
    }


}

extension ViewController:UIPickerViewDelegate,UIPickerViewDataSource
{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Country.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Country [row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
      //  city_data.text = city[row]
//        let alert = UIAlertController(title:"Country", message: "Country[row]", preferredStyle: .alert)
//        let ok = UIAlertAction(title: "ok", style: .default, handler: nil)
//        let more = UIAlertAction (title: "more", style: .destructive, handler: nil)
//        alert.addAction(ok)
//        alert.addAction(more)
//        present(alert, animated: true, completion: nil)
//
        
//        if(selected == 0){
//            
//        }
//        else if (selected == 1) {
//            backgroundView.backgroundColor = UIColor.yellow
//        }
//        else if (selected == 2) {
//            backgroundView.backgroundColor = UIColor.systemBlue
//        }
//        else if (selected == 3) {
//            backgroundView.backgroundColor = UIColor.green
//        }
        
    }
}

    

