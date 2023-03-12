
import Foundation
import UIKit

class FooterRocketView: UIView {

    var firstLauchLabel = UILabel(text: .firstLaunch)
    var countryLabel = UILabel(text:  .country)
    var theCostOfLaunchLabel = UILabel(text: .costOfLaunch)
    var firstStage = UILabel(text: .firstLaunch)
    var enginesFirstLabel = UILabel(text: .engines)
    var fuelAmountTonsFirstLabel = UILabel(text: .fuelAmountTonsFirst)
    var burnTimeFirstLabel = UILabel(text: .burnTimeFirst)
    var secondStage = UILabel(text: .secondStage)
    var enginesSecondLabel = UILabel(text: .engines)
    var fuelAmountTonsSecondLabel = UILabel(text: .fuelAmountTonsFirst)
    var burnTimeSecondLabel = UILabel(text: .burnTimeFirst)
   
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
    }
}

extension FooterRocketView {
    private func setUpContraints() {
        firstLauchLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(32)
            make.top.equalToSuperview().inset(16)
        }
        countryLabel.snp.makeConstraints { make in
            make.top.equalTo(firstLauchLabel).inset(30)
            make.leading.equalTo(firstLauchLabel)
        }

        theCostOfLaunchLabel.snp.makeConstraints { make in
            make.top.equalTo(countryLabel).inset(30)
            make.leading.equalTo(countryLabel)
        }

        firstStage.snp.makeConstraints { make in
            make.top.equalTo(theCostOfLaunchLabel).inset(40)
            make.leading.equalTo(theCostOfLaunchLabel)
        }

        enginesFirstLabel.snp.makeConstraints { make in
            make.top.equalTo(firstStage).inset(40)
            make.leading.equalTo(theCostOfLaunchLabel)
        }
        fuelAmountTonsFirstLabel.snp.makeConstraints { make in
            make.top.equalTo(enginesFirstLabel).inset(30)
            make.leading.equalTo(firstLauchLabel)
        }

        burnTimeFirstLabel.snp.makeConstraints { make in
            make.top.equalTo(fuelAmountTonsFirstLabel).inset(30)
            make.leading.equalTo(countryLabel)
        }

        secondStage.snp.makeConstraints { make in
            make.top.equalTo(burnTimeFirstLabel).inset(40)
            make.leading.equalTo(burnTimeFirstLabel)
        }

        enginesSecondLabel.snp.makeConstraints { make in
            make.top.equalTo(secondStage).inset(40)
            make.leading.equalTo(secondStage)
        }
        
        fuelAmountTonsSecondLabel.snp.makeConstraints { make in
            make.top.equalTo(enginesSecondLabel).inset(30)
            make.leading.equalTo(enginesSecondLabel)
        }

        burnTimeSecondLabel.snp.makeConstraints { make in
            make.top.equalTo(fuelAmountTonsSecondLabel).inset(30)
            make.leading.equalTo(fuelAmountTonsSecondLabel)
        }
    }
}
