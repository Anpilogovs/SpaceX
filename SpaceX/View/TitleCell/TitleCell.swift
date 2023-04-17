//
//  FrirstBlockCell.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 10.03.2023.
//

import UIKit

class TitleCell: UICollectionViewCell {
    
    public static var identifier: String {
        get {
            return "TitleCell"
        }
    }
    
    var rocket: Rocket? {
        didSet {
            titleRocketConfiguration()
        }
    }
    
    let titleView = TitleView(frame: .zero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
       
        contentView.addSubview(titleView)
        backgroundColor = .black
        setupContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func titleRocketConfiguration() {
        guard let rocket = rocket else {
            return
        }
        titleView.nameRocket.text = rocket.name
    }
    
    
}

extension TitleCell {
    private func setupContraints() {
        titleView.snp.makeConstraints { constraints in
            constraints.trailing.leading.bottom.top.equalToSuperview()
        }
    }
}
