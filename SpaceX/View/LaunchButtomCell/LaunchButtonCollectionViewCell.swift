//
//  ButtonCollectionViewCell.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 14.04.2023.
//

import UIKit

protocol LaunchButtonDelegate: AnyObject {
    func didTapLaunchButton(in cell: LaunchButtonCollectionViewCell)
}

class LaunchButtonCollectionViewCell: UICollectionViewCell {
    
    weak var delegate: LaunchButtonDelegate?
    
    public static var identifier: String {
        get {
            return "LaunchButtonCollectionViewCell"
        }
    }
    
    lazy var viewController = UIViewController()

    lazy var launchButton: UIButton = {
        let button = UIButton()
        button.setTitle("View the launch", for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 10
        button.tintColor = UIColor.white
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.addTarget(self, action: #selector(LaunchScreenTransitionButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        contentView.addSubview(launchButton)
    }

    @objc private func LaunchScreenTransitionButton() {
        delegate?.didTapLaunchButton(in: self)
    }
}

extension LaunchButtonCollectionViewCell {
    private func setupContraints() {
        launchButton.snp.makeConstraints { make in
            make.height.equalTo(45)
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
            make.top.equalTo(20)
        }
    }
}
