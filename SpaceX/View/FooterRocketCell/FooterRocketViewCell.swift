
import Foundation
import UIKit

class FooterRocketView: UIView {

    var firstLauchLabel = UILabel(text: "First Launch")
    var countryLabel = UILabel(text: "Country")
    var theCostOfLaunchLabel = UILabel(text: "The cost of launch")
    
    var firstStage = UILabel(text: "First Stage")
    
    var enginesFirstLabel = UILabel(text: "Engines")
    var fuelAmountTonsFirstLabel = UILabel(text: "Fuel Amount Tons")
    var burnTimeFirstLabel = UILabel(text: "Burn Time Sec")
    
    var secondStage = UILabel(text: "Second Stage")
    
    var enginesSecondLabel = UILabel(text: "Engines")
    var fuelAmountTonsSecondLabel = UILabel(text: "Fuel Amount Tons")
    var burnTimeSecondLabel = UILabel(text: "Burn Time Sec")
   
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
