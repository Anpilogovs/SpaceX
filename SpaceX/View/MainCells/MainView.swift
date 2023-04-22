
import Foundation
import UIKit


class MainView: UIView {
    
    // UI elements
    let launchLabel = UILabel(text: .firstLaunch, size: 20)
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
    
    // New label for displaying from value from Model
    let firstLaunchValueLabel = UILabel()
    let countryValueLabel = UILabel()
    let costOfValueLabel = UILabel()
    let enginesFirstValueLabel = UILabel()
    let fuelAmountTonsFirstValueLabel = UILabel()
    let burnTimeFirstValueLabel = UILabel()
    let enginesSecondValueLabel = UILabel()
    let fuelAmountTonsSecondValueLabel = UILabel()
    let burnTimeSecondValueLabel = UILabel()
    
    // Stack views
    private let mainStackView = UIStackView()
    private let leftStackView = UIStackView()
    private let rightStackView = UIStackView()

    
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
        leftStackView.setUpProperties(axis: .vertical,
                                      spacing: 10,
                                      distribution: .equalSpacing)
        
        leftStackView.addArrangedSubview(launchLabel)
        leftStackView.addArrangedSubview(countryLabel)
        leftStackView.addArrangedSubview(costOfLaunchLabel)
        leftStackView.addArrangedSubview(firstStageTitleLabel)
        leftStackView.addArrangedSubview(enginesFirstLabel)
        leftStackView.addArrangedSubview(fuelAmountTonsFirstLabel)
        leftStackView.addArrangedSubview(burnTimeFirstLabel)
        leftStackView.addArrangedSubview(secondStageTitleLabel)
        leftStackView.addArrangedSubview(enginesSecondLabel)
        leftStackView.addArrangedSubview(fuelAmountTonsSecondLabel)
        leftStackView.addArrangedSubview(burnTimeSecondLabel)
      
        
        rightStackView.setUpProperties(axis: .vertical,
                                       spacing: 10,
                                       distribution: .equalSpacing)

        rightStackView.addArrangedSubview(firstLaunchValueLabel)
        rightStackView.addArrangedSubview(countryValueLabel)
        rightStackView.addArrangedSubview(costOfValueLabel)
        rightStackView.addArrangedSubview(enginesFirstValueLabel)
        rightStackView.addArrangedSubview(fuelAmountTonsFirstValueLabel)
        rightStackView.addArrangedSubview(burnTimeFirstValueLabel)
        rightStackView.addArrangedSubview(enginesSecondValueLabel)
        rightStackView.addArrangedSubview(fuelAmountTonsSecondValueLabel)
        rightStackView.addArrangedSubview(burnTimeSecondValueLabel)
        
        mainStackView.addArrangedSubview(leftStackView)
        mainStackView.addArrangedSubview(rightStackView)
        
        mainStackView.setUpProperties(axis: .horizontal,
                                      spacing: 50,
                                      distribution: .equalSpacing)
                
        
        addSubview(mainStackView)
    }
}

// MARK: - Constraints
extension MainView {
    private func addConstraints() {
        // MARK: - Constraints
        // Ограничения для UIStackView
        mainStackView.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(UIEdgeInsets(top:20,
                                                             left: 20,
                                                             bottom: 20,
                                                             right: 20))
        }
    }
}

