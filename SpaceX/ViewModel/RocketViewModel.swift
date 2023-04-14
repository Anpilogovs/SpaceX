//
//  RocketViewModel.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 10.03.2023.
//

import Foundation

class RocketViewModel {
    
    var rocketInfo : [Rocket] = []
  
    func getData() {
        APICaller.getRocketInfo { result in
            switch result {
            case .success(let data):
                self.rocketInfo = data
                print("Rocket Lauch count: \(data.count)")
            case .failure(let error):
                print(error)
            }
        }
    }
}
