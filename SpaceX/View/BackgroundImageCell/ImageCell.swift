//
//  ImageCell.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 14.04.2023.
//

import SDWebImage
import UIKit

class ImageCell: UICollectionViewCell {
    
    static let identifier = "BackgroundImageCell"
    
    private let rocketImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    var imageViewModel: ImageCellViewModel? {
        didSet {
            guard let viewModel = imageViewModel else { return }
            if let imageUrl = viewModel.imageUrl {
                rocketImageView.sd_setImage(with: imageUrl)
            } else {
                rocketImageView.image = nil
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(rocketImageView)
        setupContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ImageCell {
    private func setupContraints() {
        rocketImageView.snp.makeConstraints { make in
            make.leading.trailing.top.bottom.equalToSuperview()
        }
    }
}
