
import Foundation
import UIKit

class FooterRocketView: UIView {

    var firstLauchLabel = UILabel(text: .hight, size: 16)
    var countryLabel = UILabel(text:  .country, size: 16)
    var theCostOfLaunchLabel = UILabel(text: .costOfLaunch, size: 16)
    var firstStage = UILabel(text: .firstLaunch, size: 24)
    var enginesFirstLabel = UILabel(text: .engines, size: 16)
    var fuelAmountTonsFirstLabel = UILabel(text: .fuelAmountTonsFirst, size: 16)
    var burnTimeFirstLabel = UILabel(text: .burnTimeFirst, size: 16)
    var secondStage = UILabel(text: .secondStage, size: 24)
    var enginesSecondLabel = UILabel(text: .engines, size: 16)
    var fuelAmountTonsSecondLabel = UILabel(text: .fuelAmountTonsFirst, size: 16)
    var burnTimeSecondLabel = UILabel(text: .burnTimeFirst, size: 16)
    
    var launchButton = UIButton(title: "Launch")
 
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
        setUpContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpView() {
        
        addSubview(firstLauchLabel)
        addSubview(countryLabel)
        addSubview(theCostOfLaunchLabel)
        addSubview(firstStage)
        addSubview(enginesFirstLabel)
        addSubview(fuelAmountTonsFirstLabel)
        addSubview(burnTimeFirstLabel)
        addSubview(secondStage)
        addSubview(enginesSecondLabel)
        addSubview(fuelAmountTonsSecondLabel)
        addSubview(burnTimeSecondLabel)
        addSubview(launchButton)
    }
}

extension FooterRocketView {
    private func setUpContraints() {
        firstLauchLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(32)
            make.top.equalToSuperview().inset(16)
        }
        countryLabel.snp.makeConstraints { make in
            make.top.equalTo(firstLauchLabel).inset(40)
            make.leading.equalTo(firstLauchLabel)
        }

        theCostOfLaunchLabel.snp.makeConstraints { make in
            make.top.equalTo(countryLabel).inset(40)
            make.leading.equalTo(countryLabel)
        }

        firstStage.snp.makeConstraints { make in
            make.top.equalTo(theCostOfLaunchLabel).inset(60)
            make.leading.equalTo(theCostOfLaunchLabel)
        }

        enginesFirstLabel.snp.makeConstraints { make in
            make.top.equalTo(firstStage).inset(70)
            make.leading.equalTo(theCostOfLaunchLabel)
        }
        fuelAmountTonsFirstLabel.snp.makeConstraints { make in
            make.top.equalTo(enginesFirstLabel).inset(40)
            make.leading.equalTo(firstLauchLabel)
        }

        burnTimeFirstLabel.snp.makeConstraints { make in
            make.top.equalTo(fuelAmountTonsFirstLabel).inset(40)
            make.leading.equalTo(countryLabel)
        }

        secondStage.snp.makeConstraints { make in
            make.top.equalTo(burnTimeFirstLabel).inset(60)
            make.leading.equalTo(burnTimeFirstLabel)
        }

        enginesSecondLabel.snp.makeConstraints { make in
            make.top.equalTo(secondStage).inset(50)
            make.leading.equalTo(secondStage)
        }
        
        fuelAmountTonsSecondLabel.snp.makeConstraints { make in
            make.top.equalTo(enginesSecondLabel).inset(40)
            make.leading.equalTo(enginesSecondLabel)
        }

        burnTimeSecondLabel.snp.makeConstraints { make in
            make.top.equalTo(fuelAmountTonsSecondLabel).inset(40)
            make.leading.equalTo(fuelAmountTonsSecondLabel)
        }
        
        launchButton.snp.makeConstraints { constraints in
            constraints.leading.trailing.equalToSuperview().inset(16)
            constraints.top.equalTo(burnTimeSecondLabel).inset(70)
            constraints.height.equalTo(50)
        }
    }
}
