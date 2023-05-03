//
//  InfoCellViewModel.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 03.05.2023.
//

import Foundation

struct InfoCellViewModel {
    
    private let rocket: Rocket

    init(rocket: Rocket) {
        self.rocket = rocket
    }
    
    var paramHeight: String {
        return "\(String(describing: rocket.height.meters))"
    }
    
    var paramDiameter: String {
        return "\(String(describing: rocket.diameter.meters))"
    }
    
    var payloadWeights: String {
        return "\(String(describing: rocket.payloadWeights[0].name))"
    }
}
