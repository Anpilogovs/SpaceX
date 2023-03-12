//
//  MainRockViewCell.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 10.03.2023.
//

import UIKit

class MainRocketViewCell: UIView {

    var hightLabel = UILabel(text: "22")
    var diameterLabel = UILabel(text: "Диаметер")
    var massLabel = UILabel(text: "Macca")
    var payloadLabel = UILabel(text: "Полезная нагрузка")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
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

extension MainRocketViewCell {
    private func setupContraints() {
        hightLabel.snp.makeConstraints { constraints in
            constraints.top.equalToSuperview().inset(5)
        }
        diameterLabel.snp.makeConstraints { constraints in
            constraints.top.equalTo(hightLabel).inset(10)
        }
        
        massLabel.snp.makeConstraints { constraints in
            constraints.center.equalToSuperview()
        }
        
        payloadLabel.snp.makeConstraints { constraints in
            constraints.center.equalToSuperview()
        }
    }
}