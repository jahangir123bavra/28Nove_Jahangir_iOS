//
//  CollectionViewCell3.swift
//  Flip
//
//  Created by mr.jb on 03/04/23.
//

import UIKit

class CollectionViewCell3: UICollectionViewCell {

    @IBOutlet var picture: UIImageView!
    
    @IBOutlet var label1: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        picture.layer.cornerRadius = 10
    }

}
