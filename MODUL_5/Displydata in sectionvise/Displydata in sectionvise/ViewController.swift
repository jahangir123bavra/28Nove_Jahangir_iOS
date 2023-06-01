//
//  ViewController.swift
//  Displydata in sectionvise
//
//  Created by mr.jb on 29/03/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var seriesinfo = [series]()
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return seriesinfo.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
       // cell.seriseLabel.text = seriesinfo[indexPath.row][row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    @IBOutlet var contentTableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        seriesinfo.append(series.init(section: "iOS", row: ["SE","Pro","ProMax"]))
        seriesinfo.append(series.init(section: "Android", row: ["oppo","vivo","samsung","sony"]))
        seriesinfo.append(series.init(section: "realme", row: ["realme1"]))
    }


}

class series
{
    var section : String
    var row :  [String]
    init(section: String , row: [String] ) {
        self.section = section
        self.row = row
    }
    
}
