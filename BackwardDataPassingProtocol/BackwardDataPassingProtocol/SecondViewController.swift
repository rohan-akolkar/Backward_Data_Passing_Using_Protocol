//
//  SecondViewController.swift
//  BackwardDataPassingProtocol
//
//  Created by Mac on 17/04/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var mobileNumberTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    var Delegate : BackwaradDataPassing?
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }
    @IBAction func backButton(_ sender: Any) {
        Delegate?.backDataPass(firstName: firstNameTextField.text!, lastName:lastNameTextField.text!, mobileNumber: Int(mobileNumberTextField.text!) ?? 12)
        navigationController?.popViewController(animated: true)
    }
    
}
