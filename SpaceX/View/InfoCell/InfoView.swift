//
//  MainRockViewCell.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 10.03.2023.
//

import UIKit

class InfoView: UIView {

 
    var heightLabel = UILabel()
    var diameterLabel = UILabel()
    var massLabel = UILabel()
    var payloadLabel = UILabel()
    
    //Value
    var heightValueLabel = UILabel()
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
        addSubview(diameterLabel)
        addSubview(massLabel)
        addSubview(payloadLabel)
        
        addSubview(heightValueLabel)
        addSubview(diameterValueLabel)
        addSubview(massValueLabel)
        addSubview(payloadValueLabel)
        
//               heightLabel.text = "Height"
//               diameterLabel.text = "Diameter"
//               massLabel.text = "Mass"
    }
}

extension InfoView {
    private func setupContraints() {
        
        heightLabel.snp.makeConstraints { constraints in
            constraints.top.equalToSuperview().inset(15)
            constraints.leading.equalToSuperview().inset(20)
        }
        
        heightValueLabel.snp.makeConstraints { constraints in
            constraints.centerY.equalTo(heightLabel)
            constraints.trailing.equalToSuperview().inset(20)
        }
        
        diameterLabel.snp.makeConstraints { constraints in
            constraints.top.equalTo(heightLabel.snp.bottom).offset(15)
            constraints.leading.equalToSuperview().inset(20)
        }
        diameterValueLabel.snp.makeConstraints { constraints in
            constraints.centerY.equalTo(diameterLabel)
            constraints.trailing.equalToSuperview().inset(20)
        }
        
        massLabel.snp.makeConstraints { constraints in
            constraints.top.equalTo(diameterLabel.snp.bottom).offset(15)
            constraints.leading.equalToSuperview().inset(20)
        }
        massValueLabel.snp.makeConstraints { constraints in
            constraints.centerY.equalTo(massLabel)
            constraints.trailing.equalToSuperview().inset(20)
            constraints.bottom.equalToSuperview().inset(15)
        }
    }
}

