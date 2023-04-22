
import UIKit
import SnapKit

class MainCell: UICollectionViewCell {
    
    public static var identifier: String {
        get {
            return "MainCell"
        }
    }
    
    var mainViewModel: MainRocketViewModel? {
        didSet {
            bindViewModel()
        }
    }
    
    private var mainView = MainView(frame: .zero)

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupContraints()
    }
    
    private func setupView() {
        contentView.addSubview(mainView)
        backgroundColor = .blue
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func bindViewModel() {
        guard let viewModel = mainViewModel else { return }
        mainView.firstLaunchValueLabel.text = "\(String(describing: viewModel.rocket.firstFlight))"
        mainView.countryValueLabel.text = viewModel.country
        mainView.costOfValueLabel.text = String(describing: viewModel.costPerLaunch)
        mainView.enginesFirstValueLabel.text = "\(viewModel.rocket.firstStage.engines)"
        mainView.fuelAmountTonsFirstValueLabel.text = "\(viewModel.rocket.firstStage.fuelAmountTons)"
        mainView.burnTimeFirstValueLabel.text = String(describing: viewModel.rocket.firstStage.burnTimeSEC)
        mainView.enginesSecondValueLabel.text = "\(viewModel.rocket.secondStage.engines )"
        mainView.fuelAmountTonsSecondValueLabel.text = "\(viewModel.rocket.secondStage.fuelAmountTons )"
        mainView.burnTimeSecondValueLabel.text = String(describing: viewModel.rocket.secondStage.burnTimeSEC)
    }
}

extension MainCell {
    private func setupContraints() {
        mainView.snp.makeConstraints { constraints in
            constraints.trailing.leading.bottom.top.equalToSuperview()
        }
    }
}
