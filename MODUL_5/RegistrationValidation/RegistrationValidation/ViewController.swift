//
//  ViewController.swift
//  RegistrationValidation
//
//  Created by mr.jb on 25/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameTextfField: UITextField!
    @IBOutlet var cityTextfField: UITextField!
    @IBOutlet var emailTextfField: UITextField!
    @IBOutlet var passwordTextfField: UITextField!
    @IBOutlet var pincodeTextfField: UITextField!
    @IBOutlet var mobilenumberTextfField: UITextField!
    @IBOutlet var cvvTextfField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    func textField(_ emailTextfField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentText = emailTextfField.text ?? ""
        guard let range = Range(range, in: currentText) else { return false }
        let updatedText = currentText.replacingCharacters(in: range, with: string)
        
        return isValidEmail(updatedText)
    }

    func isValidEmail(_ emailTextfField: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: emailTextfField)
    }


    @IBAction func submitButtan(_ sender: Any) {
        if(nameTextfField.text?.isEmpty)!{
            let alert=UIAlertController(title: "Error", message: "Please enter name", preferredStyle: .alert)
            let ok=UIAlertAction(title: "Ok", style: .default)
            let more=UIAlertAction(title: "MORE", style: .destructive)
            alert.addAction(ok)
            alert.addAction(more)
            present(alert, animated: true)
           }
           else if(cityTextfField.text?.isEmpty)!{
               let alert=UIAlertController(title: "Error", message: "Please enter City", preferredStyle: .alert)
               let ok=UIAlertAction(title: "Ok", style: .default)
               let more=UIAlertAction(title: "MORE", style: .destructive)
               alert.addAction(ok)
               alert.addAction(more)
               present(alert, animated: true)
           }
           else if(emailTextfField.text?.isEmpty)! {
               let alert=UIAlertController(title: "Error", message: "Please enter Email", preferredStyle: .alert)
               let ok=UIAlertAction(title: "Ok", style: .default)
               let more=UIAlertAction(title: "MORE", style: .destructive)
               alert.addAction(ok)
               alert.addAction(more)
               present(alert, animated: true)
           }
        else if(passwordTextfField.text?.isEmpty)!{
            let alert=UIAlertController(title: "Error", message: "Please enter Password", preferredStyle: .alert)
            let ok=UIAlertAction(title: "Ok", style: .default)
            let more=UIAlertAction(title: "MORE", style: .destructive)
            alert.addAction(ok)
            alert.addAction(more)
            present(alert, animated: true)
        }
        else if(pincodeTextfField.text?.isEmpty)! {
            let alert=UIAlertController(title: "Error", message: "Please enter Pincode", preferredStyle: .alert)
            let ok=UIAlertAction(title: "Ok", style: .default)
            let more=UIAlertAction(title: "MORE", style: .destructive)
            alert.addAction(ok)
            alert.addAction(more)
            present(alert, animated: true)
        }
        else if(mobilenumberTextfField.text?.isEmpty)!{
            let alert=UIAlertController(title: "Error", message: "Please enter Mobile", preferredStyle: .alert)
            let ok=UIAlertAction(title: "Ok", style: .default)
            let more=UIAlertAction(title: "MORE", style: .destructive)
            alert.addAction(ok)
            alert.addAction(more)
            present(alert, animated: true)
        }
        else if(cvvTextfField.text?.isEmpty)! {
            let alert=UIAlertController(title: "Error", message: "Please enter Cvv", preferredStyle: .alert)
            let ok=UIAlertAction(title: "Ok", style: .default)
            let more=UIAlertAction(title: "MORE", style: .destructive)
            alert.addAction(ok)
            alert.addAction(more)
            present(alert, animated: true)
        }
        else{
            let alert=UIAlertController(title: "Sucessfull", message: "", preferredStyle: .alert)
            let ok=UIAlertAction(title: "Ok", style: .default)
            let more=UIAlertAction(title: "MORE", style: .destructive)
            alert.addAction(ok)
            alert.addAction(more)
            present(alert, animated: true)
        }
       
    }
    

}

