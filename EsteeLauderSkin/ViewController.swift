//
//  ViewController.swift
//  EsteeLauderSkin
//
//  Created by Christine Zhang on 8/1/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var beautyLabel: UILabel!
    @IBOutlet weak var skinLabel: UILabel!
    @IBOutlet weak var getStartedButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //beautyLabel.font = UIFont(name: "Raleway-VariableFont_wght", size: 60)
       // skinLabel.font = UIFont(name: "Sarabun-Thin", size: 17)
        getStartedButton.alpha = 0.5
        getStartedButton.layer.cornerRadius = 35
    }


}

