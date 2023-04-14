
import UIKit

enum Section {
    case backgroundImage
    case title
    case infoParamRocket
    case mainInfoAboutRocket
    case launchButton
    
    
    var numberIfItems: Int {
        switch self {
        case .backgroundImage:
            return  1
        case .title:
            return  1
        case .infoParamRocket:
            return  4
        case .mainInfoAboutRocket:
            return  1
        case .launchButton:
            return 1
        }
    }
}

class MainViewController: UIViewController {
    
    let viewsModel: [Section] = [.backgroundImage, .title, .infoParamRocket, .mainInfoAboutRocket, .launchButton]
    
    private let activityIndicator = UIActivityIndicatorView(style: .large)
    
    //ViewModel:
    var viewModel: MainViewModel = MainViewModel()
    //varibales:
//    var cellDataSource: [FooterRocketViewModel] = []
//
//
    // MARK: - Collection View
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: self.layout)
        collectionView.bounces = true
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        configView()
        registeCells()
        bindViewModel()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.getData()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setupContraints()
    }

    func configView() {
        self.view.backgroundColor = .black
        view.addSubview(collectionView)
    }

    private func registeCells() {
           collectionView.dataSource =  self
           collectionView.register(BackgroundImageCell.self, forCellWithReuseIdentifier: BackgroundImageCell.identifier)
           collectionView.register(TitleCell.self, forCellWithReuseIdentifier: TitleCell.identifier)
           collectionView.register(InfoCell.self, forCellWithReuseIdentifier: InfoCell.identifier)
           collectionView.register(MainCell.self, forCellWithReuseIdentifier: MainCell.identifier)
           collectionView.register(LaunchButtonCollectionViewCell.self, forCellWithReuseIdentifier: LaunchButtonCollectionViewCell.identifier)
       }
    
    func bindViewModel() {
        viewModel.isLoading.bind { [weak self] isLoading in
            guard let self = self, let isLoading = isLoading  else {
                return
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                if isLoading {
                    self.activityIndicator.startAnimating()
                } else {
                    self.activityIndicator.stopAnimating()
                }
            }
        }
        
        viewModel.cellDataSource.bind { [weak self] rocket in
            guard let self = self, let rocket = rocket else {
                return
            }
            self.collectionView.reloadData()
        }
        
        func reloadInputViews() {
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
        }
    }

    lazy var layout: UICollectionViewLayout = {
        UICollectionViewCompositionalLayout { (section, enviroments) -> NSCollectionLayoutSection? in
            
            let sectionType =  self.viewsModel[section]
            
            switch sectionType {
                
            case .backgroundImage:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(0.4))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize,subitems: [item])
                let section = NSCollectionLayoutSection(group: group)
                return section
            case .title:
                //item
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),heightDimension: .absolute(74.0))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
               //group
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),heightDimension: .fractionalHeight(0.2))
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
               //section
                let section = NSCollectionLayoutSection(group: group)
                 return section
            case .infoParamRocket:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(0.6))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.3), heightDimension: .fractionalHeight(0.2   ))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                group.contentInsets.leading = 5
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
                section.contentInsetsReference = .none
                return section
            case .mainInfoAboutRocket:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(0.7))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                let section = NSCollectionLayoutSection(group: group)
                section.contentInsets.top = -50
                return section
            case .launchButton:
                //item
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),heightDimension: .absolute(74.0))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
               //group
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),heightDimension: .fractionalHeight(0.2))
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
               //section
                let section = NSCollectionLayoutSection(group: group)
                return section
            }
        }
    }()
}

extension MainViewController {
    private func setupContraints() {
        view.addSubview(activityIndicator)
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        activityIndicator.snp.makeConstraints { constaints in
            constaints.centerX.centerY.equalToSuperview()
        }
        
        collectionView.snp.makeConstraints { constraints in
            constraints.trailing.leading.bottom.top.equalToSuperview()
        }
    }
}

//import SwiftUI
//struct ContentViewPreviews: PreviewProvider {
//
//    struct ContainterView: UIViewControllerRepresentable {
//        
//        func makeUIViewController(context: Context) -> some UIViewController {
//            UINavigationController(rootViewController: MainViewController())
//        }
//
//        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) { }
//    }
//    static var previews: some View {
//        ContainterView().edgesIgnoringSafeArea(.all)
//    }
//}
