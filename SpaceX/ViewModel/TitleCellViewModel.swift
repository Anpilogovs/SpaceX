//
//  TitleCellViewModel.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 03.05.2023.
//

import Foundation

struct TitleCellViewModel {
    
    private let rocket: Rocket
    
    init(rocket: Rocket) {
        self.rocket = rocket
    }
    
    var name: String {
        return rocket.name
    }
}
