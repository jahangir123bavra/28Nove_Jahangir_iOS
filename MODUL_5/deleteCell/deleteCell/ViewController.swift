//
//  ViewController.swift
//  deleteCell
//
//  Created by mr.jb on 30/03/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    @IBOutlet var Tabel: UITableView!
    var city = ["rajkot","wankaner","morbi","surat","baroda","jamnagar","junaghadh","amreli"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return city.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as!TableViewCell
        cell.City.text = city[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as!TableViewCell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {

            //1. remove data from model
            city.remove(at: indexPath.row)

            //2. remove row from view
            tableView.deleteRows(at: [indexPath as IndexPath], with: .fade)

            //3. custom method to update your view after removing
           // updateView()
        }
    }
    
    
}

