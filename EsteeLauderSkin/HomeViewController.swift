//
//  HomeViewController.swift
//  EsteeLauderSkin
//
//  Created by Christine Zhang on 8/3/22.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return webSeriesImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionCell
        
        
        let image = UIImage(named: webSeriesImages[indexPath.row])?.withRenderingMode(.alwaysOriginal)
        cell.esteeLauderButton.setImage(image, for: .normal)
        cell.esteeLauderButton.layer.cornerRadius = 50.0
        cell.esteeLauderButton.layer.borderWidth = 1.5
        cell.esteeLauderButton.clipsToBounds = true
        
        return cell
         
    }
    
    
    
    
    var webSeriesImages:[String] = ["0", "1", "2", "3", "4", "5"]

    override func viewDidLoad() {
        super.viewDidLoad()
        

}
}
