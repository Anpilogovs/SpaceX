//
//  MainRockCellCollectionViewCell.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 10.03.2023.
//

import UIKit

class MainRocketCell: UICollectionViewCell {
    
    public static var identifier: String {
        get {
            return "MainRocketCell"
        }
    }

    var mainBackView = MainRocketViewCell()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        setupView()
        setupContraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(mainBackView)
        mainBackView.addBorder(color: .black, width: 5)
        mainBackView.round()
    }
}

extension MainRocketCell {
    private func setupContraint() {
        mainBackView.snp.makeConstraints { constraints in
            constraints.leading.top.trailing.bottom.equalToSuperview()
        }
    }
}
