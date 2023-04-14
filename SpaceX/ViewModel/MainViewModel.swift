//
//  FooterRocketViewModel.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 09.04.2023.
//

import Foundation

class MainViewModel {
    
    var isLoading: Observable<Bool> = Observable(false)
    var cellDataSource: Observable<[FooterRocketViewModel]> = Observable(nil)
    private var dataSource: [Rocket]?
    

    func getData() {
        if isLoading.value ?? true {
            return
        }

        isLoading.value = true
        APICaller.getRocketInfo { [weak self] result in
            self?.isLoading.value = false
            switch result {
            case .success(let data):
                print(data)
                self?.dataSource = data
            case .failure(let error):
                print(error)
            }
        }
    }
    
}


