//
//  ViewController.swift
//  BackwardDataPassingProtocol
//
//  Created by Mac on 17/04/23.
//

import UIKit

class ViewController: UIViewController,BackwaradDataPassing {
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var mobileNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func click(_ sender: Any) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController")as!SecondViewController
        
        secondViewController.Delegate = self
        
        navigationController?.pushViewController(secondViewController, animated: true)
    }
    
   func backDataPass(firstName: String, lastName: String, mobileNumber: Int) {
        self.firstNameLabel.text = firstName
        self.lastNameLabel.text = lastName
        self.mobileNumberLabel.text = String(mobileNumber)
    }
    
    
}

