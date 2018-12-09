//
//  ThirdScreenViewController.swift
//  UINavigationControllerDemo
//
//  Created by Chhaileng Peng on 12/9/18.
//  Copyright © 2018 Chhaileng Peng. All rights reserved.
//

import UIKit

class ThirdScreenViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let text = text {
            label.text = text
        }
        
        
    }

}
