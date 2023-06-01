//
//  TableViewCell.swift
//  deleteCell
//
//  Created by mr.jb on 30/03/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet var City: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func Delete(_ sender: Any) {
       
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
   

}
