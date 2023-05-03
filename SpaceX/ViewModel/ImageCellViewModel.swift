//
//  ImageCellViewModel.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 14.04.2023.
//

import Foundation

struct ImageCellViewModel {
    
    private let rocket: Rocket
    
    init(rocket: Rocket) {
        self.rocket = rocket
    }
    
    var imageUrl: URL? {
        guard let firstImageUrl = rocket.flickrImages.first else {
            return nil
        }
        return URL(string: firstImageUrl)
    }
}
