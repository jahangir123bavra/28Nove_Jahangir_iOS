//
//  ViewController.swift
//  Flip
//
//  Created by mr.jb on 03/04/23.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{

    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var textfield: UITextField!
    
//collection-1
    @IBOutlet var collectionView1: UICollectionView!
    var data = [adv]()
    
//collection-2
    @IBOutlet var collectionView2: UICollectionView!
    var info = [secondcell]()
    
    @IBOutlet var collection3: UICollectionView!
    var infor = [thirdcell]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textfield.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: textfield.frame.height))
        textfield.leftViewMode = .always
//CollectionView-1
        collectionView1.delegate = self
        collectionView1.dataSource =  self
        collectionView1.register(UINib(nibName: "CollectionViewCell1", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell1")
        
        data.append(adv.init(img: UIImage(named: "4"), lbl1: "Women's Shrugs", lbl2: "Don't Miss"))
        data.append(adv.init(img: UIImage(named: "2"), lbl1: "Artificial Nail", lbl2: "Minimum 40% Off"))
        data.append(adv.init(img: UIImage(named: "3"), lbl1: "Girl's sheos", lbl2: "Minimum 40% Off"))
        data.append(adv.init(img: UIImage(named: "5"), lbl1: "Women Party Wear", lbl2: "Minimum 60% Off"))
        
        scrollView.contentSize = CGSize(width: self.view.frame.self.width, height: 900)
//CollectionView-2
        collectionView2.register(UINib(nibName: "CollectionViewCell2", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell2")
        collectionView2.delegate = self
        collectionView2.dataSource =  self
        
        info.append(secondcell.init(img: UIImage(named: "b"), lbl1: "offer zone"))
        info.append(secondcell.init(img: UIImage(named: "c"), lbl1: "Men's fashoion"))
        info.append(secondcell.init(img: UIImage(named: "bb"), lbl1: "Women's Fashion"))
        info.append(secondcell.init(img: UIImage(named: "cc"), lbl1: "Electronics"))
        info.append(secondcell.init(img: UIImage(named: "gg"), lbl1: "Home"))
        info.append(secondcell.init(img: UIImage(named: "g"), lbl1: "Beauty"))
        info.append(secondcell.init(img: UIImage(named: "i"), lbl1: "Food & More"))
        info.append(secondcell.init(img: UIImage(named: "j"), lbl1: "Toys & Baby"))
        info.append(secondcell.init(img: UIImage(named: "k"), lbl1: "Mobiles"))
        info.append(secondcell.init(img: UIImage(named: "l"), lbl1: "Appliances"))
        
        collectionView2.layer.cornerRadius = 10
        
        
        collection3.delegate = self
        collection3.dataSource = self
        collection3.register(UINib(nibName: "CollectionViewCell3", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell3")
        collection3.layer.cornerRadius = 10
        collection3.backgroundColor = UIColor(red: 163/255, green: 170/255, blue: 213/255, alpha: 1)
        
        infor.append(thirdcell.init(img: UIImage(named: "A"), lbl1: "Wastern"))
        infor.append(thirdcell.init(img: UIImage(named: "B"), lbl1: "Traditional"))
        infor.append(thirdcell.init(img: UIImage(named: "D"), lbl1: "Oxodice"))
        infor.append(thirdcell.init(img: UIImage(named: "E"), lbl1: "Professional"))
        infor.append(thirdcell.init(img: UIImage(named: "F"), lbl1: "PartyWare"))
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView1 == collectionView){
            return data.count
        }
        if (collectionView2 == collectionView){
            return info.count
        }
        return infor.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if (collectionView1 == collectionView){
            let current = data[indexPath.row]
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell1", for: indexPath) as! CollectionViewCell1
            cell.picture.image = current.img
            cell.label1.text = current.lbl1
            cell.label2.text = current.lbl2
            return cell
        }
        if (collectionView2 == collectionView){
            let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell2", for: indexPath) as! CollectionViewCell2
            let current1 = info[indexPath.row]
            cell1.picture.image = current1.img
            cell1.label1.text = current1.lbl1
            return cell1
        }
        let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell3", for: indexPath) as! CollectionViewCell3
        let current1 = infor[indexPath.row]
        cell2.label1.text = current1.lbl1
        cell2.picture.image = current1.img
        return cell2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if (collectionView1 == collectionView){
            return CGSize(width: self.view.frame.width/2.3, height: 230)
        }
        if (collectionView2 == collectionView){
            return CGSize(width: self.view.frame.width/4.6, height: 110)
        }
        return CGSize(width: self.view.frame.width/4.6, height: 110)
    }
    
}

class adv
{
    var img : UIImage!
    var lbl1 : String? = ""
    var lbl2 : String? = ""
    init(img: UIImage!, lbl1: String? = nil, lbl2: String? = nil) {
        self.img = img
        self.lbl1 = lbl1
        self.lbl2 = lbl2
    }
}

class secondcell
{
    var img :UIImage!
    var lbl1 : String = ""
    init(img: UIImage!, lbl1: String) {
        self.img = img
        self.lbl1 = lbl1
    }
}

class thirdcell
{
    var img :UIImage!
    var lbl1 : String = ""
    init(img: UIImage!, lbl1: String) {
        self.img = img
        self.lbl1 = lbl1
    }
}
