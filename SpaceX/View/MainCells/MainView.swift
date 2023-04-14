
import Foundation
import UIKit


class MainView: UIView {
    
    // UI elements
    let firstLaunchLabel = UILabel(text: .firstLaunch, size: 20)
    let countryLabel = UILabel(text: .country, size: 20)
    let costOfLaunchLabel = UILabel(text: .costOfLaunch, size: 20)
    let firstStageTitleLabel = UILabel(text: .firstStage, size: 25)
    let enginesFirstLabel = UILabel(text: .engines, size: 20)
    let fuelAmountTonsFirstLabel = UILabel(text: .fuelAmountTonsFirst, size: 20)
    let burnTimeFirstLabel = UILabel(text: .burnTimeFirst, size: 20)
    let secondStageTitleLabel = UILabel(text: .secondStage, size: 25)
    let enginesSecondLabel = UILabel(text: .engines, size: 20)
    let fuelAmountTonsSecondLabel = UILabel(text: .fuelAmountTonsFirst, size: 20)
    let burnTimeSecondLabel = UILabel(text: .burnTimeFirst, size: 20)
   
    // Stack views
    private let mainStackView = UIStackView()
    
    // MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK:  Set up UI elements
    private func setUpView() {

        mainStackView.axis = .vertical
        mainStackView.spacing = 5
        mainStackView.distribution = .equalSpacing
     
        mainStackView.addArrangedSubview(firstLaunchLabel)
        mainStackView.addArrangedSubview(countryLabel)
        mainStackView.addArrangedSubview(costOfLaunchLabel)
        mainStackView.addArrangedSubview(firstStageTitleLabel)
        mainStackView.addArrangedSubview(enginesFirstLabel)
        mainStackView.addArrangedSubview(fuelAmountTonsFirstLabel)
        mainStackView.addArrangedSubview(burnTimeFirstLabel)
        mainStackView.addArrangedSubview(secondStageTitleLabel)
        mainStackView.addArrangedSubview(enginesSecondLabel)
        mainStackView.addArrangedSubview(fuelAmountTonsSecondLabel)
        mainStackView.addArrangedSubview(burnTimeSecondLabel)
     
        addSubview(mainStackView)
    }
}

extension MainView {
        private func addConstraints() {
            mainStackView.snp.makeConstraints { make in
                make.edges.equalToSuperview().inset(UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16))
            }
        }
    }

