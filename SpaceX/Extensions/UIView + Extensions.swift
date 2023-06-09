//
//  UIView + Extensions.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 11.03.2023.
//

import UIKit

extension UIView {
    func round(_ radius: CGFloat = 50) {
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
    
    func addBorder(color: UIColor, width: CGFloat) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
}
