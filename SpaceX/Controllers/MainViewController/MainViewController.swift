
import UIKit

class MainViewController: UICollectionViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        self.registeCells()
        
       
    }
    
    init() {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(450))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize,subitems: [item])
        let section = NSCollectionLayoutSection(group: group)
        let layout = UICollectionViewCompositionalLayout(section: section)
        
        super.init(collectionViewLayout: layout)
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

