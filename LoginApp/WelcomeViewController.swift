//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by EkaterinaP on 08.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeUserLabel: UILabel!
    
    var userName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeUserLabel.text = "Welcome, \(userName ?? "")!"
        
        let coloreOne = UIColor(red: 0.2, green: 0.6, blue: 0.3, alpha: 1.0).cgColor
        let coloreTwo = UIColor(red: 0.4, green: 0.2, blue: 0.6, alpha: 1.0).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [coloreOne, coloreTwo]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        view.layer.insertSublayer(gradientLayer, at: 0)
        
    }
    
    @IBAction func logoutButtonPressed() {
        dismiss(animated: true)
    }
    
}
