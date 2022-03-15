//
//  Extension + UIView.swift
//  LoginApp
//
//  Created by EkaterinaP on 15.03.2022.
//

import UIKit

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
