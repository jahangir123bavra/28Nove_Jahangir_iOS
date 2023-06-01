//
//  ViewController.swift
//  DeleteCellXib
//
//  Created by mr.jb on 30/03/23.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate ,UITableViewDataSource{
    
    @IBOutlet var tableciew: UITableView!
    var city = ["Wankaner","Rajkot","Morbi"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableciew.register(UINib.init(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return city.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.city.text = city[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        let point = tableView.convert(CGPoint.zero, to: tableView)
              guard let indexpath = tableView.indexPathForRow(at: point) else {return}
              city.remove(at: indexpath.row)
              tableView.beginUpdates()
              tableView.deleteRows(at: [IndexPath(row: indexpath.row, section: 0)], with: .left)
              tableView.endUpdates()
        }

}

