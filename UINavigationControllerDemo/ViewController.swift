//
//  ViewController.swift
//  UINavigationControllerDemo
//
//  Created by Chhaileng Peng on 12/9/18.
//  Copyright © 2018 Chhaileng Peng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSecondScreen" {
            let secondScreenVC = segue.destination as! SecondScreenViewController
            secondScreenVC.text = textField.text
        }
    }

    @IBAction func openThirdScreen(_ sender: UIButton) {
//        let myStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let thirdScreenVC = storyboard?.instantiateViewController(withIdentifier: "thirdScreen") as! ThirdScreenViewController
        thirdScreenVC.text = textField.text
        navigationController?.pushViewController(thirdScreenVC, animated: true)
    }
    
}

