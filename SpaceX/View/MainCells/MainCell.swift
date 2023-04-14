
import UIKit
import SnapKit

class MainCell: UICollectionViewCell {
    
    public static var identifier: String {
        get {
            return "MainCell"
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

    func update(with viewModel: Rocket) {
        mainView.firstLaunchLabel.text = viewModel.country
        mainView.countryLabel.text = viewModel.country
        mainView.costOfLaunchLabel.text = "\(viewModel.costPerLaunch )"
        mainView.enginesFirstLabel.text = "\(viewModel.firstStage.engines )"
        mainView.fuelAmountTonsFirstLabel.text = "\(viewModel.firstStage.fuelAmountTons )"
        mainView.burnTimeFirstLabel.text = "\(viewModel.firstStage.burnTimeSec )"
        mainView.enginesSecondLabel.text = "\(viewModel.secondStage.engines )"
        mainView.fuelAmountTonsSecondLabel.text = "\(viewModel.secondStage.fuelAmountTons )"
        mainView.burnTimeSecondLabel.text = "\(viewModel.secondStage.burnTimeSec )"
    }
}

extension MainCell {
    private func setupContraints() {
        mainView.snp.makeConstraints { constraints in
            constraints.trailing.leading.bottom.top.equalToSuperview()
        }
    }
}
