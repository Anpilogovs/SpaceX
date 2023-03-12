
import UIKit

class MainViewController: UIViewController {
        
    let collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: createLayout())
         collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        // collectionView.backgroundColor = .clear
        return collectionView
    }()

    var viewModel: RocketViewModel = RocketViewModel()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configeView()
        view.backgroundColor = .lightGray
    }
    
    private func configeView() {
        self.view.addSubview(collectionView)
        setupCollectionView()
        setupContraints()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.getData()
    }
}

extension MainViewController {
    static func createLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { (sectionNumber, _) -> NSCollectionLayoutSection? in
            switch sectionNumber {
            case 0:
                return UICollectionView.createSectionForImage()
            case 1:
                return UICollectionView.creatSectionForHeader()
            case 2:
                return UICollectionView.creatSectionForMain()
            case 3:
                return UICollectionView.creatSectionForFooter()
            default:
                return nil
            }
        }
    }
}
