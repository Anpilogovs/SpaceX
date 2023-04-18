//
//  BackgroundViewModel.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 17.04.2023.
//

import Foundation


class BackgroundImageViewModel {
    
    let imageUrl: URL?
    
    init(rocket: Rocket) {
        guard let imageUrlString = rocket.flickrImages.first else {
            self.imageUrl = nil
            return
        }
        self.imageUrl = URL(string: imageUrlString)
    }
}
