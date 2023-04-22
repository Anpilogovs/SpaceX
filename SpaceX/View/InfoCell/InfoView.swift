//
//  MainRockViewCell.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 10.03.2023.
//

import UIKit

class InfoView: UIView {

 
    var heightLabel = UILabel(text: .hight, size: 14)
    var diameterLabel = UILabel()
    var massLabel = UILabel()
    var payloadLabel = UILabel()
    
    //Value
    var hightValueLabel = UILabel()
    var diameterValueLabel = UILabel()
    var massValueLabel = UILabel()
    var payloadValueLabel = UILabel()
    
    
  private var row1StackView = UIStackView()
    
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
        addSubview(heightLabel)
        addSubview(hightValueLabel)
        
        addSubview(diameterLabel)
        addSubview(massLabel)
        addSubview(payloadLabel)
    }
}

extension InfoView {
    private func setupContraints() {

        hightValueLabel.snp.makeConstraints { constraints in
            constraints.top.centerX.equalToSuperview().inset(15)
        }
        heightLabel.snp.makeConstraints { constraints in
            constraints.center.equalToSuperview()
        }
    }
}
