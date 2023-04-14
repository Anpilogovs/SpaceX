
import UIKit

extension MainViewController: UICollectionViewDataSource {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
           return viewsModel.count
       }

       func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           return viewsModel[section].numberIfItems
       }
    

     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         
         let section = viewsModel[indexPath.section]
         
        switch section {
        case .backgroundImage:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BackgroundImageCell.identifier, for: indexPath) as? BackgroundImageCell else { return UICollectionViewCell() }
               return cell
        case .title:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TitleCell.identifier, for: indexPath) as? TitleCell else { return UICollectionViewCell() }
               return cell
        case .infoParamRocket:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: InfoCell.identifier, for: indexPath) as? InfoCell else { return UICollectionViewCell() }
                return cell
        case .mainInfoAboutRocket:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainCell.identifier, for: indexPath) as? MainCell else { return UICollectionViewCell() }
            return cell
        case .launchButton:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LaunchButtonCollectionViewCell.identifier, for: indexPath) as? LaunchButtonCollectionViewCell else { return UICollectionViewCell() }
            cell.delegate = self 
            return cell
        }
    }
}

extension MainViewController: LaunchButtonDelegate {
    func didTapLaunchButton(in cell: LaunchButtonCollectionViewCell) {
        let controllerLaunch = LaunchRocketViewController()
        navigationController?.pushViewController(controllerLaunch, animated: true)
    }
}
