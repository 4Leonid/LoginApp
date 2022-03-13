//
//  AboutUserViewController.swift
//  LoginApp
//
//  Created by EkaterinaP on 13.03.2022.
//

import UIKit

class AboutUserViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet var workLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    
    //MARK: - Public properties
    var user = User.getStandartUser()
    var work = ""
    var age = 0

    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        workLabel.text = "My work is \(work)"
        ageLabel.text = "My age is \(age)"
    }
    
    //MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let fotoVC = segue.destination as? FotoViewController else { return }
        fotoVC.imageName = UIImage(named: user.persons.imageName)!
    }
}
