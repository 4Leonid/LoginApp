//
//  FotoViewController.swift
//  LoginApp
//
//  Created by EkaterinaP on 13.03.2022.
//

import UIKit

class FotoViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet var userImage: UIImageView! {
        didSet {
            configureImage(userImage)
        }
    }
    
    //MARK: - Public properties
    var person: Person!
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        userImage.image = UIImage(named: person.imageName)
//        configureImage(userImage)
    }
    
    //MARK: - Private Methods
    private func configureImage(_ image: UIImageView) {
        image.layer.cornerRadius = userImage.frame.width / 2
        image.layer.borderWidth = 2
        image.layer.borderColor = UIColor.blue.cgColor
    }
}
