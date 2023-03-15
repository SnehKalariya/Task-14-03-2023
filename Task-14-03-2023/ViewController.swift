//
//  ViewController.swift
//  Task-14-03-2023
//
//  Created by Sneh kalariya on 14/03/23.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView1: UICollectionView!
    @IBOutlet weak var collectionView2: UICollectionView!
    @IBOutlet weak var collectionView3: UICollectionView!
    
    var popularArray = [1,2,3,4,5,6,7]
    var actionArray = [8,9,10,11,12,13,14]
    var adventuresArray = [15,16,17,18,19,20,21]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionView1 {
            return popularArray.count
        }
        else if collectionView == self.collectionView2{
            return actionArray.count
        }
        else{
            return adventuresArray.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionView1{
            let cell = collectionView1.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
            cell.imageView1.image = UIImage(named: "\(popularArray[indexPath.row])")
            return cell
        }
        else if collectionView == self.collectionView2{
            let cell2 = collectionView2.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCell2
            cell2.imageView2.image = UIImage(named: "\(actionArray[indexPath.row])")
            return cell2
        }
        else {
            let cell3 = collectionView3.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! CollectionViewCell3
            cell3.imageView3.image = UIImage(named: "\(adventuresArray[indexPath.row])")
            
            return cell3
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: 120, height: 210)
    }
    

}

