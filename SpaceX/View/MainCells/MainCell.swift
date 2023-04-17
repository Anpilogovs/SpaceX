
import UIKit
import SnapKit

class MainCell: UICollectionViewCell {
    
    public static var identifier: String {
        get {
            return "MainCell"
        }
    }
    
    var viewModel: RocketMainViewModel? {
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
        guard let viewModel = viewModel else { return }
        mainView.firstLaunchLabel.text = viewModel.rocket.firstFlight
        mainView.countryLabel.text = viewModel.country
        mainView.costOfLaunchLabel.text = "\(viewModel.costPerLaunch )"
        mainView.enginesFirstLabel.text = "\(viewModel.rocket.firstStage.engines)"
        mainView.fuelAmountTonsFirstLabel.text = "\(viewModel.rocket.firstStage.fuelAmountTons)"
        mainView.burnTimeFirstLabel.text = "\(viewModel.rocket.firstStage.burnTimeSEC )"
        mainView.enginesSecondLabel.text = "\(viewModel.rocket.secondStage.engines )"
        mainView.fuelAmountTonsSecondLabel.text = "\(viewModel.rocket.secondStage.fuelAmountTons )"
        mainView.burnTimeSecondLabel.text = "\(viewModel.rocket.secondStage.burnTimeSEC )"
    }
}

extension MainCell {
    private func setupContraints() {
        mainView.snp.makeConstraints { constraints in
            constraints.trailing.leading.bottom.top.equalToSuperview()
        }
    }
}
