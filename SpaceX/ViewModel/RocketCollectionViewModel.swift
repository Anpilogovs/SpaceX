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
        self.nameRocket = movie.name ?? "0"
        self.firstLaunch = movie.firstFlight ?? "0"
        self.country = movie.country ?? "0"
        self.costLauch = "\(movie.costPerLaunch)"
        self.enginesFirstStage = movie.secondStage?.engines ?? 0
        self.fuelAmountTonsFirstStage = movie.firstStage?.fuelAmountTons ?? 0
        self.burnTimeSecFirstStage = movie.firstStage?.burnTimeSec ?? 0
        self.enginesSecondStage = movie.secondStage?.engines ?? 0
        self.fuelAmountTonsSecondStage = movie.secondStage?.fuelAmountTons ?? 0
        self.burnTimeSecSecondStage = movie.secondStage?.burnTimeSec ?? 0
        
//        self.engines = makeImageURL(movie.posterPath ?? "")
    }
    
    func makeImageURL(_ imageCode: String) -> URL? {
        URL(string: "\(NetworkConstants.shared.imageServerAdress)\(imageCode)")
    }
}
