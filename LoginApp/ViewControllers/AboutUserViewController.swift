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
    var user: Person?

    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let work = user?.work, let age = user?.age else { return }
        workLabel.text = "My work is \(work)"
        ageLabel.text = "My age is \(age)"
    }
    
    //MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let fotoVC = segue.destination as? FotoViewController else { return }
        guard let imageName = user?.imageName, let image = UIImage(named: imageName) else { return }
        fotoVC.image = image
    }
}
