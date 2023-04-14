
import UIKit


enum LabelText: String {
    
    case firstLaunch = "First Launch"
    case country = "Country"
    case costOfLaunch = "The cost of launch"
    case firstStage = "First Stage"
    case engines = "Engines"
    case fuelAmountTonsFirst =  "Fuel Amount Tons"
    case burnTimeFirst = "Burn Time Sec"
    case secondStage =  "Second Stage"
    case hight = "22"
    case diameter = "Diameter"
    case mass = "Mass"
    case payload = "Payload"
}

extension UILabel {
    
    convenience init(text: LabelText, size: CGFloat){
        self.init(frame: .zero)
        self.text = text.rawValue
        self.font = UIFont.boldSystemFont(ofSize: size)
        self.textColor = .white
    }
}
