//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by EkaterinaP on 08.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet var welcomeUserLabel: UILabel!
    
    //MARK: - Public properties
    var user = User.getStandartUser()
    
    //MARK: - Private properties
    private let coloreOne = UIColor(
        red: 0.8,
        green: 0.8,
        blue: 0.8,
        alpha: 1
    )
    
    private let coloreTwo = UIColor(
        red: 0.4,
        green: 0.2,
        blue: 0.6,
        alpha: 1
    )
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGradientColore(topColore: coloreTwo, bottomColore: coloreOne)
        welcomeUserLabel.text = "Welcome, " + user.persons.firstName + " " + user.persons.secondName + "!"
    }
}

//MARK: - Set background color
extension UIView {
    func addGradientColore(topColore: UIColor, bottomColore: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.colors = [topColore.cgColor, bottomColore.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
