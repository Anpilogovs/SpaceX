
import UIKit

extension MainViewController: UICollectionViewDataSource {
    
    func setupCollectionView() {
        collectionView.dataSource =  self
        registeCells()
        view.addSubview(collectionView)
        setupContraints() 
    }
    
    func registeCells() {
        collectionView.register(ImageCell.self, forCellWithReuseIdentifier: ImageCell.identifier)
        collectionView.register(HeaderRocketCell.self, forCellWithReuseIdentifier: HeaderRocketCell.identifier)
        collectionView.register(MainRocketCell.self, forCellWithReuseIdentifier: MainRocketCell.identifier)
        collectionView.register(FooterRocketCell.self, forCellWithReuseIdentifier: FooterRocketCell.identifier)
    }
    
    override func reloadInputViews() {
        DispatchQueue.main.async {
            self.collectionView.reloadData()
        }
    }
    
     func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 4
    }
    
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0: return 1
        case 1: return 1
        case 2: return 4
        case 3: return 1
        default:
            return 1
        }
    }

     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section{
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

//MARK: - setupContraints
extension MainViewController {
    private func setupContraints() {
        collectionView.snp.makeConstraints { constraints in
            constraints.trailing.leading.bottom.top.equalToSuperview()
        }
    }
}
