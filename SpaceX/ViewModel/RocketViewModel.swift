//
//  RocketViewModel.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 10.03.2023.
//

import Foundation
 
class RocketViewModel {
    
    
    
    func getData() {
        APICaller.getRocketInfo { result in
            switch result {
            case .success(let data):
                print("Rocket Lauch count: \(data.results.count)")
            case .failure(let error):
                print(error)
            }
        }
    }
}
