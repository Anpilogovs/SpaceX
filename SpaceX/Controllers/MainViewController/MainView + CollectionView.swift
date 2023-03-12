//
//  MainViewCollectionDataSource.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 10.03.2023.
//

import UIKit

extension MainViewController: UICollectionViewDataSource {
    
     
    func setupCollectionView() {
        collectionView.dataSource =  self
        collectionView.delegate = self
        registeCells()
    }
    
    func registeCells() {
        collectionView.register(FooterRocketCell.self, forCellWithReuseIdentifier: FooterRocketCell.identifier)
        collectionView.register(HeaderRocketCell.self, forCellWithReuseIdentifier: HeaderRocketCell.identifier)
        collectionView.register(MainRocketCell.self, forCellWithReuseIdentifier: MainRocketCell.identifier)
    }
    
    override func reloadInputViews() {
        DispatchQueue.main.async {
            self.collectionView.reloadData()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.row {
        case 0:  guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HeaderRocketCell.identifier, for: indexPath) as? HeaderRocketCell else { return UICollectionViewCell() }
            return cell
        case 1: guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainRocketCell.identifier, for: indexPath) as? MainRocketCell else { return UICollectionViewCell() }
            return cell
        case 2:  guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FooterRocketCell.identifier, for: indexPath) as? FooterRocketCell else { return UICollectionViewCell() }
            return cell
        default:
            return UICollectionViewCell()
        }
    }
}


extension MainViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch indexPath.row {
        case 0 : return CGSize(width: collectionView.frame.width, height: 50)
        case 1 : return CGSize(width: collectionView.frame.width / 4, height: 100)
        case 2: return CGSize(width: collectionView.frame.width, height: 390)
        default: break
        }
        return CGSize(width: 50, height: 50)
    }
    
    
}

extension MainViewController: UICollectionViewDelegate {
    

}

extension MainViewController {
    func setupContraints() {
        collectionView.snp.makeConstraints { contraints in
            contraints.top.equalToSuperview().inset(300)
            contraints.leading.trailing.equalToSuperview().inset(16)
            contraints.bottom.equalToSuperview()
        }
    }
}
