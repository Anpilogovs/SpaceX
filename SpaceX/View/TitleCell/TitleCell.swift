//
//  TitleCell.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 14.04.2023.
//

import UIKit

protocol TitleCellButtonDelegate: AnyObject {
    func didTapTitleButton(in cell: TitleCell)
}

class TitleCell: UICollectionViewCell {
    
    weak var delegate: TitleCellButtonDelegate?
    private var titleView = TitleView(frame: .zero)
    
    public static var identifier: String {
        get {
            return "TitleCell"
        }
    }
    
    var titleViewModel: TitleCellViewModel? {
        didSet {
            guard let titleViewModel = titleViewModel else {
                return
            }
            titleView.nameRocket.text = titleViewModel.name
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(titleView)
        backgroundColor = .black
        setupContraints()
        titleView.settinButton.addTarget(self, action: #selector(didTapSettinButton), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    func didTapSettinButton() {
        print("Hello")
        delegate?.didTapTitleButton(in: self)
    }
}

extension TitleCell {
    private func setupContraints() {
        titleView.snp.makeConstraints { constraints in
            constraints.trailing.leading.bottom.top.equalToSuperview()
        }
    }
}
