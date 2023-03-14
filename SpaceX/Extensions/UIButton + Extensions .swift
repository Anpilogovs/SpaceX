//
//  UIButton + Extensions .swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 14.03.2023.
//

import UIKit

extension UIButton {
    
    convenience init(title: String) {
        self.init(type: .system)
        self.setTitle("View the launch", for: .normal)
        self.backgroundColor = .darkGray
        self.layer.cornerRadius = 10
        self.tintColor = UIColor.white
        self.titleLabel?.font = UIFont.systemFont(ofSize: 20)
    }
}

