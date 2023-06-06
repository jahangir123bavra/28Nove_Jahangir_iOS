//
//  StudentVC.swift
//  CoreDataPractice
//
//  Created by MAC on 22/03/23.
//

import Foundation
import UIKit

class StudentVC: UIViewController {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var vwName: UIView!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var vwSubject: UIView!
    @IBOutlet weak var txtSubject: UITextField!
    @IBOutlet weak var vwEmail: UIView!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var vwMobile: UIView!
    @IBOutlet weak var txtMobile: UITextField!
    @IBOutlet weak var btnSave: UIButton!
    @IBOutlet weak var btnShowData: UIButton!
    
    @IBAction func btnSaveTapped(_ sender: Any) {
        
        getdata()
        
    }
    
    @IBAction func btnShowDataTapped(_ sender: Any) {
        
        ShowData()
        
    }
    
    func ShowData() {
        
        let showdataVC = storyboard?.instantiateViewController(withIdentifier: "ShowDataVC") as! ShowDataVC
        self.navigationController?.pushViewController(showdataVC, animated: true)
        
    }
    
    func getdata() {
        
        let stdata = ["name":txtName.text!,
                      "subject":txtSubject.text!,
                      "email":txtEmail.text!,
        "mobile":Int(txtMobile.text!)!] as [String : Any]
        
        let dml = DMLOperation()
        dml.savedata(data: stdata)
        
        do
        {
            try context.save()
            let alert=UIAlertController(title: "Success", message: "Your data has been saved!", preferredStyle: .alert)
            let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
            
            txtName.text=""
            txtSubject.text=""
            txtEmail.text=""
            txtMobile.text=""
            
        }
        catch
        {
            print(error.localizedDescription)
            let alert=UIAlertController(title: "Error", message: "Something went wrong....", preferredStyle: .alert)
            let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    func Setup() {
        
        self.imgProfile.image = UIImage(named: "Profile")
        
        self.txtName.placeholder = "Enter Name"
        
        self.txtSubject.placeholder = "Enter Subject"
        
        self.txtEmail.placeholder = "Enter Email"
        
        self.txtMobile.placeholder = "Enter Mobile Number"
        
        self.btnSave.setTitle("Save", for: .normal)
        
        self.btnShowData.setTitle("ShowData", for: .normal)
        
    }
    
    func Applystyle() {
        
        self.vwName.layer.borderColor = UIColor.darkGray.cgColor
        self.vwName.layer.borderWidth = 1.0
        
        self.vwSubject.layer.borderColor = UIColor.darkGray.cgColor
        self.vwSubject.layer.borderWidth = 1.0
        
        self.vwEmail.layer.borderColor = UIColor.darkGray.cgColor
        self.vwEmail.layer.borderWidth = 1.0
        
        self.vwMobile.layer.borderColor = UIColor.darkGray.cgColor
        self.vwMobile.layer.borderWidth = 1.0
        
        self.btnSave.backgroundColor = .black
        self.btnSave.tintColor = .white
        
        self.btnShowData.backgroundColor = .green
        self.btnShowData.tintColor = .white
        
        DispatchQueue.main.async {
            
            self.imgProfile.layer.cornerRadius = self.imgProfile.frame.size.height / 2
            
            self.vwName.layer.cornerRadius = self.vwName.frame.size.height / 2
            
            self.vwSubject.layer.cornerRadius = self.vwSubject.frame.size.height / 2
            
            self.vwEmail.layer.cornerRadius = self.vwEmail.frame.size.height / 2
            
            self.vwMobile.layer.cornerRadius = self.vwMobile.frame.size.height / 2
            
            self.btnSave.layer.cornerRadius = self.btnSave.frame.size.height / 2
            
            self.btnShowData.layer.cornerRadius = self.btnShowData.frame.size.height / 2
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path=NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        print(path)
        
        self.Setup()
        
        self.Applystyle()
        
    }
    
}
