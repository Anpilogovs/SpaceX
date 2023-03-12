//
//  RocketCollectionViewModel.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 10.03.2023.
//

import Foundation

class RocketCollectionCellViewModel {
  
    var nameRocket: String
    var firstLaunch: String
    var country: String
    var costLauch: String
    var enginesFirstStage: Int
    var fuelAmountTonsFirstStage: Double
    var burnTimeSecFirstStage: Int
    var enginesSecondStage: Int
    var fuelAmountTonsSecondStage: Double
    var burnTimeSecSecondStage: Int
    var imageUrl: URL?
    
    init(movie: Rocket) {
        self.nameRocket = movie.name
        self.firstLaunch = movie.firstFlight
        self.country = movie.country
        self.costLauch = "\(movie.costPerLaunch)"
        self.enginesFirstStage = movie.secondStage.engines
        self.fuelAmountTonsFirstStage = movie.firstStage.fuelAmountTons
        self.burnTimeSecFirstStage = movie.firstStage.burnTimeSEC ?? 0
        self.enginesSecondStage = movie.secondStage.engines
        self.fuelAmountTonsSecondStage = movie.secondStage.fuelAmountTons
        self.burnTimeSecSecondStage = movie.secondStage.burnTimeSEC ?? 0
        
//        self.engines = makeImageURL(movie.posterPath ?? "")
    }
    
    func makeImageURL(_ imageCode: String) -> URL? {
        URL(string: "\(NetworkConstants.shared.imageServerAdress)\(imageCode)")
    }
}
