//
//  CollectionViewCell2.swift
//  Flip
//
//  Created by mr.jb on 03/04/23.
//

import UIKit

class CollectionViewCell2: UICollectionViewCell {

    @IBOutlet var label1: UILabel!
    @IBOutlet var picture: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        picture.layer.cornerRadius = self.picture.frame.height/2
    }

}
