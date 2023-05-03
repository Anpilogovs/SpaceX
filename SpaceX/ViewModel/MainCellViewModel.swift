//
//  MainCellViewModel.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 03.05.2023.
//

import Foundation

struct MainCellViewModel {
    
    private let rocketsStage: Rocket
    
    init(rocketsStage: Rocket) {
        self.rocketsStage = rocketsStage
    }
    
    var firstFlight: String {
        return rocketsStage.firstFlight
    }
    
    var country: String {
        return rocketsStage.country
    }
    
    var costLaunch: String {
        return "\(rocketsStage.costPerLaunch)"
    }
    
    var firstStageEngine: String {
        return "\(rocketsStage.firstStage.engines)"
    }
    
    var firstStagefuelAmountTons: String {
        return "\(rocketsStage.firstStage.fuelAmountTons)"
    }
    
    var firstStageBurnTime: String {
        return "\(String(describing: rocketsStage.firstStage.burnTimeSEC))"
    }
    
    var secondStageEngine: String {
        return "\(rocketsStage.secondStage.engines)"
    }
    
    var secondStagefuelAmountTons: String {
        return "\(rocketsStage.secondStage.fuelAmountTons)"
    }
    
    var secondStageBurnTime: String {
        return "\(String(describing: rocketsStage.secondStage.burnTimeSEC))"
    }
}
