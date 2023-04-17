//
//  RocketTitleViewModel.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 17.04.2023.
//

import Foundation


class RocketTitleViewModel {
    
    var rocket: Rocket
    
    init(rocket: Rocket) {
        self.rocket = rocket
    }
    
    var nameRocket: String {
        return rocket.name 
    }
}
