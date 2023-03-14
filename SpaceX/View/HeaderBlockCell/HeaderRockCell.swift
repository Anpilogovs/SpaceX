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
        setupContraints()
        backgroundColor = .black
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
extension HeaderRocketCell {
    private func setupContraints() {
        backFirstView.snp.makeConstraints { constraints in
            constraints.trailing.leading.bottom.top.equalToSuperview()
        }
    }
}
