//
//  ImageScrollTableViewCell.swift
//  SingleViewApp
//
//  Created by mr.jb on 05/04/23.
//

import UIKit

class ImageScrollTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!

    let imageNames = ["A", "B", "C", "D", "E"]
    let gameNames  = ["Candy Crush", "Cut the Ropes", "Arbitrary Game 1", "Littlest Pet Shop", "Zuba"]

    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageNames.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.imageView.image  = UIImage.init(named: imageNames[indexPath.row])
        cell.titleLabel.text  = gameNames[indexPath.row]
        cell.layer.cornerRadius = 20
        cell.detailLabel.text = "Games"

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 250)
    }
    }
