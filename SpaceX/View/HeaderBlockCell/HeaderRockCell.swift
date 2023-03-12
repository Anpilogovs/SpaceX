//
//  FrirstBlockCell.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 10.03.2023.
//

import UIKit

class HeaderRocketCell: UICollectionViewCell {
    
    public static var identifier: String {
        get {
            return "HeaderRocketCell"
        }
    }
    
    private var backFirstView = HeaderRocketViewCell()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
       
        addSubview(backFirstView)
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
