//
//  RocketViewModel.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 10.03.2023.
//

import Foundation

final class RocketViewModel {
    
    var rockets : [Rocket] = []
    
    var eventHangler: ((_ event: Event) -> Void)? //Data Binding Closure
  
    func fetchRocket() {
        self.eventHangler?(.loading)
        APICaller.fetchRockets { result in
            self.eventHangler?(.stopLoading)
            switch result {
            case .success(let data):
                self.rockets = data
                self.eventHangler?(.dataLoaded)
            case .failure(let error):
                self.eventHangler?(.error(error))
            }
        }
    }
}

extension RocketViewModel {
    
    enum Event {
        case loading
        case stopLoading
        case dataLoaded
        case error(Error?)
    }
}
