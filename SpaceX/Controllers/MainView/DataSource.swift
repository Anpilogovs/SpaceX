//
//  MainViewController.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 02.05.2023.
//

import UIKit

extension MainViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return ScreenSectionsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let sectionType = ScreenSectionsArray[section]
        return sectionType.numberIfItems
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let section = ScreenSectionsArray[indexPath.section]
        
        guard let backgroundImageCell = collectionView.dequeueReusableCell(withReuseIdentifier: ImageCell.identifier, for: indexPath) as? ImageCell else { return UICollectionViewCell() }
        
        
        guard let titleViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: TitleCell.identifier, for: indexPath) as? TitleCell else { return UICollectionViewCell() }
        
        guard let infoCell = collectionView.dequeueReusableCell(withReuseIdentifier: InfoCell.identifier, for: indexPath) as? InfoCell else { return UICollectionViewCell() }
        
        
        guard let mainCell = collectionView.dequeueReusableCell(withReuseIdentifier: MainCell.identifier, for: indexPath) as? MainCell else { return UICollectionViewCell() }
        
        guard let launchScreen = collectionView.dequeueReusableCell(withReuseIdentifier: LaunchButtonCollectionViewCell.identifier, for: indexPath) as? LaunchButtonCollectionViewCell else { return UICollectionViewCell() }
        
        switch section {
            
        case .backgroundImage:
            let viewModel = viewModel.imageCellViewModel(forIndexPath: indexPath)
            backgroundImageCell.imageViewModel = viewModel
            return backgroundImageCell
            
        case .title:
            let cellViewModel = viewModel.titleCellViewModel(forIndexPath: indexPath)
            titleViewCell.titleViewModel = cellViewModel
            titleViewCell.delegate = self
            return titleViewCell
            
        case .infoParamRocket:
            let viewModel = viewModel.infoCellViewModel(forIndexPath: indexPath)
            infoCell.infoViewModel = viewModel
            return infoCell
        case .mainInfoAboutRocket:
            
            
            return mainCell
        case .launchButton:
            
            launchScreen.delegate = self
            return launchScreen
        }
    }
}

extension MainViewController: TitleCellButtonDelegate {
    func didTapTitleButton(in cell: TitleCell) {
        let controllerSetting = SettingsViewController()
        navigationController?.pushViewController(controllerSetting, animated: true)
    }
}

extension MainViewController: LaunchButtonDelegate {
    func didTapLaunchButton(in cell: LaunchButtonCollectionViewCell) {
        let controllerLaunch = LaunchRocketViewController()
        navigationController?.pushViewController(controllerLaunch, animated: true)
    }
}
