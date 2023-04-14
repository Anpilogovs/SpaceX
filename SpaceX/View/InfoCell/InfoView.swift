//
//  MainRockViewCell.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 10.03.2023.
//

import UIKit

class InfoView: UIView {

    var hightLabel = UILabel(text: .hight, size: 14)
    var diameterLabel = UILabel(text: .diameter, size: 14)
    var massLabel = UILabel(text: .mass, size: 14 )
    var payloadLabel = UILabel(text: .payload, size: 14)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .brown
        setupView()
        setupContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(hightLabel)
        addSubview(diameterLabel)
        addSubview(massLabel)
        addSubview(payloadLabel)
    }
}

extension InfoView {
    private func setupContraints() {
        hightLabel.snp.makeConstraints { constraints in
            constraints.center.equalToSuperview().inset(5)
        }
    }
}
