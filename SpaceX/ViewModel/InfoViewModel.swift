//
//  InfoViewModel.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 17.04.2023.
//

import Foundation

class InfoViewModel {
    
    var rocket: Rocket
    
    init(rocket: Rocket) {
        self.rocket = rocket
    }
    
    var height: String {
        return "\(rocket.height) \(UnitType.m.rawValue)"
    }
    
    var diameter: String {
        return "\(rocket.diameter) \(UnitType.m.rawValue)"
    }
    
    var mass: String {
        return "\(rocket.mass) \(UnitType.kg.rawValue)"
    }
    //
    //    var payload: String {
    //        return rocket.payloadWeights.map({$0.})
    //        }
}
