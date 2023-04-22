
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
    
    let ScreenSectionsArray: [Section] = [.backgroundImage, .title, .infoParamRocket, .mainInfoAboutRocket, .launchButton]
    
    private let activityIndicator = UIActivityIndicatorView(style: .large)
    
    var viewModel = GenaralViewModel()
    
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
        configuration()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.fetchRockets()
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
        collectionView.register(ImageCell.self, forCellWithReuseIdentifier: ImageCell.identifier)
        collectionView.register(TitleCell.self, forCellWithReuseIdentifier: TitleCell.identifier)
        collectionView.register(InfoCell.self, forCellWithReuseIdentifier: InfoCell.identifier)
        collectionView.register(MainCell.self, forCellWithReuseIdentifier: MainCell.identifier)
        collectionView.register(LaunchButtonCollectionViewCell.self, forCellWithReuseIdentifier: LaunchButtonCollectionViewCell.identifier)
    }
    
    private lazy var layout: UICollectionViewLayout = {
        UICollectionViewCompositionalLayout { (section, enviroments) -> NSCollectionLayoutSection? in
            
            let sectionType =  self.ScreenSectionsArray[section]
            
            switch sectionType {
                
            case .backgroundImage:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(0.4))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize,subitems: [item])
                let section = NSCollectionLayoutSection(group: group)
                return section
            case .title:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),heightDimension: .absolute(74.0))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),heightDimension: .fractionalHeight(0.1))
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
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
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),heightDimension: .absolute(74.0))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),heightDimension: .fractionalHeight(0.2))
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
                let section = NSCollectionLayoutSection(group: group)
                return section
            }
        }
    }()
}

extension MainViewController {
    func configuration() {
        initViewModel()
        observeEvent()
    }
    
    func initViewModel() {
        viewModel.fetchRockets()
    }
    
    func observeEvent() {
        viewModel.eventHangler = { [weak self] event in
            guard let self = self else { return }
            
            switch event {
            case .loading:
                self.activityIndicator.startAnimating()
                print("Rocket loading....")
            case .stopLoading:
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.activityIndicator.stopAnimating()
                }
                print("Stop loading....")
            case .dataLoaded:
                print("Data loading....")
                DispatchQueue.main.async {
                    self.collectionView.reloadData()
                }
                print(self.viewModel.rockets)
            case .error(let error):
                print(error as Any)
            }
        }
    }
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

import SwiftUI
struct ContentViewPreviews: PreviewProvider {
    
    struct ContainterView: UIViewControllerRepresentable {
        
        func makeUIViewController(context: Context) -> some UIViewController {
            UINavigationController(rootViewController: MainViewController())
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) { }
    }
    static var previews: some View {
        ContainterView().edgesIgnoringSafeArea(.all)
    }
}
