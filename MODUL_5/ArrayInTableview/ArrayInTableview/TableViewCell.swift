//
//  TableViewCell.swift
//  ArrayInTableview
//
//  Created by mr.jb on 29/03/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var name_label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}