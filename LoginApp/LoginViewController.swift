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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if userTextField.text == "Leo", passwordTextField.text == "1" {
            guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
            welcomeVC.userName = userTextField.text
        } else {
            showAlert(title: "Wrong login or password",
                      message: "Please put correct login",
                      actionTitle: "OK")
            passwordTextField.text = ""
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is WelcomeViewController else { return }
        userTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func fogotUsernameButtonTapped() {
        showAlert(title: "Oops", message: "Your name is Leo", actionTitle: "OK")
    }
    
    @IBAction func fogotPasswordButtonTapped() {
        showAlert(title: "Oops", message: "Your password is 1", actionTitle: "OK")
    }
    
    private func showAlert(title: String, message: String, actionTitle: String) {
        let ac = UIAlertController(title: title,
                                   message: message,
                                   preferredStyle: .alert)
        ac.addAction(.init(title: actionTitle, style: .default))
        present(ac, animated: true)
    }
    
     func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userTextField {
             passwordTextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
            performSegue(withIdentifier: "welcomeSegue", sender: nil)
        }
        return true
    }
}

