//
//  CollectionViewCell1.swift
//  Flip
//
//  Created by mr.jb on 03/04/23.
//

import UIKit

class CollectionViewCell1: UICollectionViewCell {
    @IBOutlet var backView: UIView!
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var picture: UIImageView!
    @IBOutlet var label2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backView.layer.cornerRadius = 10
        picture.layer.cornerRadius = 5
    }

}
