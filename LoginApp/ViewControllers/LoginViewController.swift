//
//  ViewController.swift
//  LoginApp
//
//  Created by EkaterinaP on 08.03.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    //MARK: - Public properties
    let user = User.getUser()

    //MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.person = user.person
            } else if let navigationVC = $0 as? UINavigationController {
                guard let aboutUserVC = navigationVC.topViewController as? AboutUserViewController else { return }
                aboutUserVC.person = user.person
            }
        }
        //        for viewController in viewControllers {
        //            if let welcomeVC = viewController as? WelcomeViewController {
        //                welcomeVC.user = user.person
        //            } else if let navigationVC = viewController as? UINavigationController {
        //                guard let aboutUserVC = navigationVC.topViewController as? AboutUserViewController else { return }
        //                aboutUserVC.user = user.person
        //            }
        //        }
    }
    
    //MARK: IBActions
    @IBAction func loginButtonPressed() {
        guard userTextField.text == user.login, passwordTextField.text == user.password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTextField
            )
            return
        }
        performSegue(withIdentifier: "welcomeSegue", sender: nil)
    }
    
    @IBAction func showAuthorizationData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \(user.login) 🥱")
        : showAlert(title: "Oops!", message: "Your password is \(user.password) 🥱")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userTextField.text = ""
        passwordTextField.text = ""
    }
}

//MARK: - Alert Controller
extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

//MARK: -Keyboard
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       if textField == userTextField {
            passwordTextField.becomeFirstResponder()
       } else {
           loginButtonPressed()
       }
       return true
   }
}
