//
//  QuizTwoViewController.swift
//  EsteeLauderSkin
//
//  Created by Christine Zhang on 8/2/22.
//

import UIKit

class QuizTwoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
        }
    }
    
    
   

}
