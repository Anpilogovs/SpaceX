//
//  RocketMainViewModel.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 17.04.2023.
//

import Foundation


class RocketMainViewModel {
    
    var rocket: Rocket
    
    init(rocket: Rocket) {
        self.rocket = rocket
    }
    
    // Свойства модели данных, которые будут использоваться в ячейке
    var name: String {
        return rocket.name
    }
    
    var country: String {
        return rocket.country
    }
    
    var costPerLaunch: Int {
        return rocket.costPerLaunch
    }
    
    var firstStage: FirstStage  {
        return rocket.firstStage
    }
    
    var secondStage: SecondStage {
        return rocket.secondStage
    }
}
