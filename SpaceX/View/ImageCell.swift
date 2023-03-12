//
//  ImageCell.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 12.03.2023.
//

import Foundation
import UIKit

class ImageCell: UICollectionViewCell {
    
    let imageView: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
