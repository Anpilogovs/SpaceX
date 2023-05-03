//
//  MainViewModel.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 12.03.2023.
//

import Foundation

final class MainViewModel {

    var eventHangler: ((_ event: Event) -> Void)? //Data Binding Closure
    var rockets: [Rocket] = []

    
    func fetchRockets() {
        self.eventHangler?(.loading)
        APIManager.shared.request(modelType: [Rocket].self,
                                  type: EndPointItems.rockets) { response in
            self.eventHangler?(.stopLoading)
            switch response {
            case .success(let data):
                self.rockets = data.compactMap({$0})
                self.eventHangler?(.dataLoaded)
            case .failure(let error):
                self.eventHangler?(.error(error))
            }
        }
    }
    
    func imageCellViewModel(forIndexPath indexPath: IndexPath) -> ImageCellViewModel? {
        let rocketImage = rockets[indexPath.row]
        return ImageCellViewModel(rocket: rocketImage)
    }
    
    func titleCellViewModel(forIndexPath indexPath: IndexPath) -> TitleCellViewModel? {
        let rocketTitle = rockets[indexPath.row]
        return TitleCellViewModel(rocket: rocketTitle)
    }
    
    func infoCellViewModel(forIndexPath indexPath: IndexPath) -> InfoCellViewModel? {
        let rocketInfo = rockets[indexPath.row]
        return InfoCellViewModel(rocket: rocketInfo)
    }
    
    func mainCellViewModel(forIndexPath indexPath: IndexPath) -> MainCellViewModel? {
        let rocketInfoStage = rockets[indexPath.row]
        return MainCellViewModel(rocketsStage: rocketInfoStage)
    }
}

extension MainViewModel {
    
    enum Event {
        case loading
        case stopLoading
        case dataLoaded
        case error(Error?)
    }
}

