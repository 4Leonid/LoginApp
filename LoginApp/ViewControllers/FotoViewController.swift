//
//  FotoViewController.swift
//  LoginApp
//
//  Created by EkaterinaP on 13.03.2022.
//

import UIKit

class FotoViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet var userImage: UIImageView!
    
    //MARK: - Public properties
    var imageName = UIImage()
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        userImage.image = imageName
        userImage.layer.cornerRadius = userImage.frame.width / 2
        userImage.layer.borderWidth = 2
        userImage.layer.borderColor = UIColor.blue.cgColor
    }
}
