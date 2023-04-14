//
//  RocketCollectionViewModel.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 10.03.2023.
//

import Foundation

class FooterRocketViewModel {
    var firstLaunch: String
    var country: String
    var costPerLaunch: Int
    var enginesFirst: Int
    var fuelAmountTonsFirst: Double
    var burnTimeFirst: Int
    var enginesSecond: Int
    var fuelAmountTonsSecond: Double
    var burnTimeSecond: Int
    
    init(rocket: Rocket) {
        self.firstLaunch = rocket.firstFlight 
        self.country = rocket.country 
        self.costPerLaunch = rocket.costPerLaunch
        self.enginesFirst = rocket.firstStage.engines
        self.fuelAmountTonsFirst = rocket.firstStage.fuelAmountTons ?? 0
        self.burnTimeFirst = rocket.firstStage.burnTimeSec ?? 0
        self.enginesSecond = rocket.secondStage.engines
        self.fuelAmountTonsSecond = rocket.secondStage.fuelAmountTons
        self.burnTimeSecond = rocket.secondStage.burnTimeSec ?? 0
    }

    func makeImageURL(_ imageCode: String) -> URL? {
        URL(string: "\(NetworkConstants.shared.imageServerAdress)\(imageCode)")
    }
}
