//
//  MainRockCellCollectionViewCell.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 10.03.2023.
//

import UIKit

class InfoCell: UICollectionViewCell {
    
    public static var identifier: String {
        get {
            return "InfoCell"
        }
    }

    var infoView = InfoView(frame: .zero)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        setupView()
        setupContraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        contentView.addSubview(infoView)
        infoView.addBorder(color: .black, width: 5)
        infoView.round()
    }
}

extension InfoCell {
    private func setupContraint() {
        infoView.snp.makeConstraints { constraints in
            constraints.leading.top.trailing.bottom.equalToSuperview()
        }
    }
}