//
//  UIStackView + Extensions.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 18.04.2023.
//

import UIKit

extension UIStackView {
    
    // Set up main properties
    func setUpProperties(axis: NSLayoutConstraint.Axis, spacing: CGFloat, distribution: UIStackView.Distribution) {
        self.axis = axis
        self.spacing = spacing
        self.distribution = distribution
    }
}
