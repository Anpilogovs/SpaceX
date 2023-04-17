
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
        
        switch section {
        case .backgroundImage:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BackgroundImageCell.identifier, for: indexPath) as? BackgroundImageCell else { return UICollectionViewCell() }
            let imageRocket = viewModel.rockets[indexPath.item]
            let viewModel = BackgroundImageViewModel(rocket: imageRocket)
            cell.backGroundViewModel = viewModel
            return cell
        case .title:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TitleCell.identifier, for: indexPath) as? TitleCell else { return UICollectionViewCell() }
            let titleRocket = viewModel.rockets[indexPath.item]
            let viewModel = RocketTitleViewModel(rocket: titleRocket)
            cell.titleViewModel = viewModel
            return cell
        case .infoParamRocket:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: InfoCell.identifier, for: indexPath) as? InfoCell else { return UICollectionViewCell() }
            if viewModel.isIndexValid(indexPath.item) {
                let InfoRocket = viewModel.rockets[indexPath.item]
                let viewModel = InfoViewModel(rocket: InfoRocket)
                cell.infoViewModel = viewModel
            }
            return cell
        case .mainInfoAboutRocket:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainCell.identifier, for: indexPath) as? MainCell else { return UICollectionViewCell() }
            let MainRocket = viewModel.rockets[indexPath.item]
            let viewModel = RocketMainViewModel(rocket: MainRocket)
            cell.mainViewModel = viewModel
            return cell
        case .launchButton:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LaunchButtonCollectionViewCell.identifier, for: indexPath) as? LaunchButtonCollectionViewCell else { return UICollectionViewCell() }
            cell.delegate = self
            return cell
        }
    }
}

//extension TitleCell: TitleViewDelegate {
//    func didTapTitleViewButton() {
//        let controllerSettings = SettingsViewController()
//        navigationController?.pushViewController(controllerSettings, animated: true)
//    }
//}

extension MainViewController: LaunchButtonDelegate {
    func didTapLaunchButton(in cell: LaunchButtonCollectionViewCell) {
        let controllerLaunch = LaunchRocketViewController()
        navigationController?.pushViewController(controllerLaunch, animated: true)
    }
}
