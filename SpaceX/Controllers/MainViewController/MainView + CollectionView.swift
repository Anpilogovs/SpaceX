
import UIKit

extension MainViewController {
    
    
    
    
    // MARK: - Configure Compositional layout
     func createLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { (sectionNumber, _) -> NSCollectionLayoutSection? in
            switch sectionNumber {
            case 0:
                return self.createSectionForImage()
            case 1:
                return self.creatSectionForHeader()
            case 2:
                return self.creatSectionForMain()
            case 3:
                return self.creatSectionForFooter()
            default:
                return self.createSectionForImage()
            }
        }
    }

    func setupCollectionView() {
        collectionView.dataSource =  self
        collectionView.delegate = self
        registeCells()
    }
    
    func registeCells() {
        collectionView.register(ImageCell.self, forCellWithReuseIdentifier: ImageCell.identifier)
        collectionView.register(FooterRocketCell.self, forCellWithReuseIdentifier: FooterRocketCell.identifier)
        collectionView.register(HeaderRocketCell.self, forCellWithReuseIdentifier: HeaderRocketCell.identifier)
        collectionView.register(MainRocketCell.self, forCellWithReuseIdentifier: MainRocketCell.identifier)
    }
    
    override func reloadInputViews() {
        DispatchQueue.main.async {
            self.collectionView.reloadData()
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 4
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.row {
        case 0: guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ImageCell.identifier, for: indexPath) as? ImageCell else { return UICollectionViewCell() }
            return cell
        case 1:  guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HeaderRocketCell.identifier, for: indexPath) as? HeaderRocketCell else { return UICollectionViewCell() }
            return cell
            
        case 2: guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainRocketCell.identifier, for: indexPath) as? MainRocketCell else { return UICollectionViewCell() }
            return cell
            
        case 3:  guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FooterRocketCell.identifier, for: indexPath) as? FooterRocketCell else { return UICollectionViewCell() }
            return cell
        default:
            return UICollectionViewCell()
        }
    }
}

extension MainViewController {
    

}

