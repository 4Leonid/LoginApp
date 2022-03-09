//
//  ViewController.swift
//  LoginApp
//
//  Created by EkaterinaP on 08.03.2022.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if userTextField.text == "Leo" && passwordTextField.text == "1" {
            guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
            welcomeVC.userName = userTextField.text
        } else {
            let ac = UIAlertController(title: "Invalid login or password",
                                       message: "Please, enter correct login and password",
                                       preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default)
            passwordTextField.text = ""
            ac.addAction(action)
            present(ac, animated: true)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let _ = segue.source as? WelcomeViewController else { return }
        userTextField.text = ""
        passwordTextField.text = ""
        
    }
    
    @IBAction func fogotUsernameButtonTapped() {
        let ac = UIAlertController(title: "Oops!",
                                   message: "Your name is Leo",
                                   preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        ac.addAction(action)
        present(ac, animated: true)
    }
    
    @IBAction func fogotPasswordButtonTapped() {
        let ac = UIAlertController(title: "Oops!",
                                   message: "Your password is 1",
                                   preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        ac.addAction(action)
        present(ac, animated: true)
    }
    
     func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userTextField {
             passwordTextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
            if let vc =  WelcomeViewController() as? WelcomeViewController {
            navigationController?.pushViewController(vc, animated: true)
            }
        }
        return true
    }
}

