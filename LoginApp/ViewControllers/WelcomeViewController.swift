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
    var person: Person!
    
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
        welcomeUserLabel.text = "Welcome, \(person.fullName)!"
    }
}

