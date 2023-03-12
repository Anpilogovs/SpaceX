
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
        backView.theCostOfLaunchLabel.text = "\(viewModel.costPerLaunch)"
        
        backView.enginesFirstLabel.text = "\(viewModel.firstStage.engines)"
        backView.fuelAmountTonsFirstLabel.text = "\(viewModel.firstStage.fuelAmountTons)"
        backView.burnTimeFirstLabel.text = "\(String(describing: viewModel.firstStage.burnTimeSEC))"
        
        backView.enginesSecondLabel.text = "\(viewModel.secondStage.engines)"
        backView.fuelAmountTonsSecondLabel.text = "\(viewModel.secondStage.fuelAmountTons)"
        backView.burnTimeSecondLabel.text = "\(String(describing: viewModel.secondStage.burnTimeSEC))"
    }
}

