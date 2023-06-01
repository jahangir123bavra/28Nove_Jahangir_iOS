//
//  CollectionViewCell.swift
//  Collectionview
//
//  Created by mr.jb on 05/04/23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet var lbl: UILabel!
    @IBOutlet var img: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        img.layer.cornerRadius = 10
    }
}
