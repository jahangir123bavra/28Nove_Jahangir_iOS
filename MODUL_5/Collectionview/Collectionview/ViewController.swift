//
//  ViewController.swift
//  Collectionview
//
//  Created by mr.jb on 05/04/23.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{
    
    var data = [Data]()
    

    
    @IBOutlet var collectionview: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        data.append(Data.init(picture: UIImage(named: "1")!, name: "KDM"))
        data.append(Data.init(picture: UIImage(named: "2")!, name: "SONNY"))
        data.append(Data.init(picture: UIImage(named: "3")!, name: "VIVO"))
        data.append(Data.init(picture: UIImage(named: "4")!, name: "OPPO"))
        data.append(Data.init(picture: UIImage(named: "5")!, name: "UNI"))
        data.append(Data.init(picture: UIImage(named: "6")!, name: "BOAT"))
        data.append(Data.init(picture: UIImage(named: "7")!, name: "APPLE"))
        data.append(Data.init(picture: UIImage(named: "8")!, name: "NOKIA"))
        
        
        _  = 8
      //  for i in 1...item {
            //data.append("Item \(i)")
       // }
      //  collectionview.reloadData()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as!CollectionViewCell
        cell.img.image = data[indexPath.row].picture
        cell.lbl.text = data[indexPath.row].name
        cell.layer.cornerRadius = 20
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width/3, height: 200)
    }
}

class Data
{
    var picture : UIImage
    var name : String
    init(picture: UIImage, name: String) {
        self.picture = picture
        self.name = name
    }
    
}
