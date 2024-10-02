//
//  ViewController.swift
//  Text Validation App Starter
//
//  Created by Jane Madsen on 10/1/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var statusMessageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func validatePassword(_ sender: Any) {
        let characters = [",", ".", "!", "@", "#", "$", "%", "^", "&", "*", "<", ">", "?", "+", "=", "-"]
        var containsSpecialCharacter = false
        var passwordCount = false
        if let password = passwordTextField.text {
            containsSpecialCharacter = false
            print(password)
            if password.count < 8 {
                passwordCount = false
            } else {
                passwordCount = true
            }
            for character in characters {
                if password.contains(character){
                    containsSpecialCharacter = true
                }
            }
        }
        if passwordCount && containsSpecialCharacter {
            statusMessageLabel.text = "Login Successful"
        } else if passwordCount == false {
            statusMessageLabel.text = "Password must contain at least 8 characters"
        } else {
            statusMessageLabel.text = "Password must contain at least one special character"
        }
    }
    
}

