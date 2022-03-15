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
    var person: Person!

    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
//        guard let work = user?.work, let age = user?.age else { return }
//        guard let name = user?.firstName, let sirname = user?.secondName else { return }
        title = person.fullName
        workLabel.text = "My work is \(person.work)"
        ageLabel.text = "My age is \(person.age)"
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let fotoVC = segue.destination as? FotoViewController else { return }
        fotoVC.person = person
    }
}
