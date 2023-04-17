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
    
    var infoViewModel: InfoViewModel? {
        didSet {
            infoBindViewModel()
        }
    }
    
   private var infoView = InfoView(frame: .zero)
    
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
    
  private func infoBindViewModel() {
        guard let infoViewModel = infoViewModel else {
            return
        }
        infoView.hightLabel.text = infoViewModel.height
        infoView.diameterLabel.text = infoViewModel.diameter
      infoView.massLabel.text = infoViewModel.mass
        
    }
}

extension InfoCell {
    private func setupContraint() {
        infoView.snp.makeConstraints { constraints in
            constraints.leading.top.trailing.bottom.equalToSuperview()
        }
    }
}
