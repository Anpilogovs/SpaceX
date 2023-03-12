
import UIKit
import SnapKit

class FooterRocketCell: UICollectionViewCell {
    
    public static var identifier: String {
        get {
            return "FooterRocketCell"
        }
    }
    
    
   private var backView = FooterRocketView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
       addSubview(backView)
       backgroundColor = .blue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViewCell(viewModel: Rocket) {
        backView.firstLauchLabel.text = viewModel.firstFlight
        backView.countryLabel.text = viewModel.country
        backView.theCostOfLaunchLabel.text = "\(viewModel.costPerLaunch ?? 0)"
        
        backView.enginesFirstLabel.text = "\(viewModel.firstStage?.engines ?? 0)"
        backView.fuelAmountTonsFirstLabel.text = "\(viewModel.firstStage?.fuelAmountTons ?? 0)"
        backView.burnTimeFirstLabel.text = "\(viewModel.firstStage?.burnTimeSec ?? 0)"
        
        backView.enginesSecondLabel.text = "\(viewModel.secondStage?.engines ?? 0)"
        backView.fuelAmountTonsSecondLabel.text = "\(viewModel.secondStage?.fuelAmountTons ?? 0)"
        backView.burnTimeSecondLabel.text = "\(viewModel.secondStage?.burnTimeSec ?? 0)"
    }
}

