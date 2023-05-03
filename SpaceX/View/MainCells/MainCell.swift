//
//  MainCell.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 14.04.2023.
//

import UIKit
import SnapKit

class MainCell: UICollectionViewCell {
    
    public static var identifier: String {
        get {
            return "MainCell"
        }
    }
    
    var mainViewModel: MainCellViewModel? {
        didSet {
            guard let viewModel = mainViewModel else { return }
            mainView.firstLaunchValueLabel.text = viewModel.firstFlight
            mainView.countryValueLabel.text = viewModel.country
            mainView.costOfValueLabel.text = viewModel.costLaunch
            mainView.enginesFirstValueLabel.text = viewModel.firstStageEngine
            mainView.fuelAmountTonsFirstValueLabel.text = viewModel.firstStagefuelAmountTons
            mainView.burnTimeFirstValueLabel.text =  viewModel.secondStageBurnTime
            mainView.enginesSecondValueLabel.text =  viewModel.secondStageEngine
            mainView.fuelAmountTonsSecondValueLabel.text = viewModel.secondStageEngine
            mainView.burnTimeSecondValueLabel.text = viewModel.secondStageBurnTime
        }
    }
    
    private var mainView = MainView(frame: .zero)

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupContraints()
    }
    
    private func setupView() {
        contentView.addSubview(mainView)
        backgroundColor = .blue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MainCell {
    private func setupContraints() {
        mainView.snp.makeConstraints { constraints in
            constraints.trailing.leading.bottom.top.equalToSuperview()
        }
    }
}
