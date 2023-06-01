//
//  CollectionViewCell.swift
//  SingleViewApp
//
//  Created by mr.jb on 05/04/23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    override func awakeFromNib() {
        imageView.layer.cornerRadius = 10
    }
    }
