
import UIKit

class MainViewController: UIViewController {

    // MARK: - Collection View
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: MainViewController.createLayout())
        collectionView.backgroundColor = .black
        collectionView.bounces = true
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        configView()
    }
    
    func configView() {
        self.title = "Main View"
        self.view.backgroundColor = .black
        setupCollectionView()
    }

}

