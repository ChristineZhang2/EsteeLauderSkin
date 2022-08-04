//
//  HViewController.swift
//  EsteeLauderSkin
//
//  Created by Christine Zhang on 8/3/22.
//

import UIKit

class HViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var collectionViewB: UICollectionView!
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionView {
            return webSeriesImages.count // Replace with count of your data for collectionViewA
            }

        return esteeLauderImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionView{

                // Set up cell
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionCell
            
            
            let image = UIImage(named: webSeriesImages[indexPath.row])?.withRenderingMode(.alwaysOriginal)
            cell.esteeLauderButton.setImage(image, for: .normal)
            cell.esteeLauderButton.layer.cornerRadius = 40
            //cell.esteeLauderButton.layer.borderWidth = 1.5
            cell.esteeLauderButton.clipsToBounds = true
            
            return cell
               
            }

        else {
                
                let cellB = collectionView.dequeueReusableCell(withReuseIdentifier: "cellB", for: indexPath) as! CollectionViewCell
                
                
                let image = UIImage(named: esteeLauderImages[indexPath.row])?.withRenderingMode(.alwaysOriginal)
                cellB.esteeLauderImage.setImage(image, for: .normal)
                cellB.esteeLauderImage.layer.cornerRadius = 85
               // cellB.esteeLauderImage.layer.borderWidth = 1
                cellB.esteeLauderImage.clipsToBounds = true
                cellB.esteeLauderImage.contentHorizontalAlignment = .fill
                cellB.esteeLauderImage.contentVerticalAlignment = .fill
                cellB.esteeLauderImage.imageView?.contentMode = .scaleToFill
                return cellB

        
            }
    }
    
    
    var webSeriesImages:[String] = ["0", "1", "2", "3"]
    var esteeLauderImages:[String] = ["5", "6", "7", "8","4"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   

}
